use image::GenericImageView;
use num_cpus;

use std::path::Path;
use std::collections::HashMap;
use std::fs;
use math::round;
use std::{
    sync::{Arc, Mutex},
    thread,
};
use std::sync::mpsc;

// ToDo: Optimize the feature extraction, because you can have 3x the extracted features if you don't let occupied_pixels map be so cluttered with failed features, I tried to do it but it left the feature extraction about 4x slower, so I will have to come back to it

static supported_image_formats:[&str; 22] = ["PNG","JPEG","JPG","BMP","TIFF","TIF","AVIF","PNM","DDS","TGA","EXR","png","jpeg","jpg","bmp","tiff","tif","avif","pnm","dds","tga","exr"];

fn extract_features(img_path: String,feature_difference_threshold: i16,feature_size: u32) -> (String,Vec::<Vec::<[u8; 4]>>) {
    //Open the Image
    let img = image::open(&Path::new(&img_path)).unwrap();
    let img_width = img.dimensions().0;
    let img_height = img.dimensions().1;

    println!("width: {}, height: {}",img_width,img_height);

    let mut index:i32 = 0;
    
    let mut previous_pixel_data:(u32, u32, image::Rgba<u8>) = (0,0,img.get_pixel(0,0));

    // let mut imgbuf = image::ImageBuffer::new(img_width, img_height);

    //let mut contrasty_pixels = HashMap::<String,bool>::new();

    let mut occupied_pixels = HashMap::<(u32,u32),bool>::new();
//: Vec<Vec<image::Rgba<u8>>>
    let mut final_features: Vec::<Vec::<[u8; 4]>> = Vec::new();
    let mut final_features_pixel_indexes: Vec::<Vec::<(u32,u32)>> = Vec::new();

    //Iterate over the Pixels in the image
    for p in img.pixels() {

        if index > 0 && index as i32 % img_width as i32 != 0 {
            //Calc. the difference of the current pixel for each channel 
            let mut r_diff = p.2.0[0] as i16 - previous_pixel_data.2.0[0] as i16;
            let mut g_diff = p.2.0[1] as i16 - previous_pixel_data.2.0[1] as i16;
            let mut b_diff = p.2.0[2] as i16 - previous_pixel_data.2.0[2] as i16;

            //If any of the differences are negative make them positive
            if r_diff < 0 {
                r_diff = r_diff*-1;
            }
            if g_diff < 0 {
                g_diff = g_diff*-1;
            }
            if b_diff < 0 {
                b_diff = b_diff*-1;
            }

            //Calc. the total_difference
            let total_difference = r_diff+g_diff+b_diff;

            //If the total difference is greater than the feature difference threshold the current pixel will be added to the contrasty pixels HashMap
            if total_difference > feature_difference_threshold {
                //contrasty_pixels.insert(format!("{}{}",p.0,p.1),true);
                if p.0 + feature_size < img_width && p.1 + feature_size < img_height {
                    let mut final_features_pixel_indexes_temp: Vec<(u32,u32)> = vec![];
                    let mut are_any_pixels_occupied = false;
                    //let mut occupied_pixels_temp: Vec<(u32,u32)> = vec![];
                    for x in 0..feature_size {
                        if are_any_pixels_occupied {
                            break;
                        }
                        for y in 0..feature_size {
                            let oc_pixle_key = (x+p.0,y+p.1);
                            if occupied_pixels.contains_key(&oc_pixle_key) {
                                are_any_pixels_occupied = true;
                                break;
                            }
                            final_features_pixel_indexes_temp.push((x+p.0,y+p.1));
                            //occupied_pixels_temp.push((x+p.0,y+p.1));
                            occupied_pixels.insert((x+p.0,y+p.1),true);
                        }
                    }
                    if !are_any_pixels_occupied {
                        final_features_pixel_indexes.push(final_features_pixel_indexes_temp);
                        //for i in occupied_pixels_temp {
                        //    occupied_pixels.insert(format!("{}{}",i.0,i.1),true);
                        //}
                    }
                }
            }
        }
        previous_pixel_data = p;
        index+=1;
    }

    for item in final_features_pixel_indexes {
        let mut pixel_data_bundle: Vec<[u8; 4]> = vec![];
        for x_y in item {
            let pixel = img.get_pixel(x_y.0,x_y.1);
            pixel_data_bundle.push(pixel.0);
        }
        final_features.push(pixel_data_bundle);
    }



    println!("Found {} features",final_features.len());

    //   for (x, y, pixel) in imgbuf.enumerate_pixels_mut() {
    //       let key = (x,y);
    //       if occupied_pixels.contains_key(&key) {
    //           *pixel = image::Rgb([255 as u8, 255 as u8, 255 as u8]);
    //       }else{
    //           *pixel = image::Rgb([0, 0, 0]);
    //       }
    //   }

    //   println!("Saving image");

    //   let result_path = str::replace(img_path,".","_result.");

    //   imgbuf.save(format!("{}.png",result_path)).unwrap();

    //   println!("Saved image");
    let img_path_split = img_path.split("/");
    let img_name: Vec<&str> = img_path_split.collect();

    return (img_name[img_name.len()-1].to_string(),final_features);
}

pub fn extract_features_for_all_images(image_dir: &str,result_path: &str) {

    let (tx,rx) = mpsc::channel();

    let mut thread_count = num_cpus::get();
    let dir_contents = fs::read_dir(image_dir).unwrap();
    let mut input_image_paths: Vec<String> = vec![];

    let mut thread_img_distribution = HashMap::<u16,Vec<String>>::new();

    let mut images_per_thread = 1;
    let mut left_over_count = 0;

    let mut left_overs: Vec<String> = vec![];

    let mut final_feature_map = HashMap::<String, Vec::<Vec::<[u8; 4]>>>::new();
    
    for entry in fs::read_dir(image_dir).unwrap(]6) {
        let path = entry.unwrap().path();
        // Get path string.
        let path_str = path.to_str().unwrap();

        for format in supported_image_formats {
            if path_str.contains(format) {
                input_image_paths.push(path_str.to_string());
            }
        }
    }

    if input_image_paths.len() < thread_count {
        thread_count = input_image_paths.len();
    }

    println!("{:?}",input_image_paths);

    images_per_thread = round::ceil(input_image_paths.len() as f64 / thread_count as f64, 0) as usize;

    // if input_image_paths.len() % thread_count == 0 {
    //     println!("divisible");
    //     images_per_thread = round::ceil(input_image_paths.len() as f64 / thread_count as f64, 0) as usize;
    // }else{
    //     println!("not divisible");
    //     images_per_thread = round::ceil(input_image_paths.len() as f64 / thread_count as f64, 0) as usize;
    //     left_over_count = (images_per_thread*thread_count) - input_image_paths.len();
    //     println!("left_over_count: {:?}",left_over_count);
    // }

    let mut total_images = 0;

    for i in 0..thread_count {
        let mut img_paths_for_single_thread: Vec<String> = vec![];

        if total_images < input_image_paths.len() {
            for b in 0..images_per_thread {
                if input_image_paths.len() > total_images {
                    img_paths_for_single_thread.push(input_image_paths[i+b].clone());
                    total_images+=1;
                }
            }
        }
        thread_img_distribution.insert(i.try_into().unwrap(),img_paths_for_single_thread);
    }

    let mut index = 0;
    //let thread_img_distribution_local = thread_img_distribution;
    //let shared_thread_img_distribution = Arc::new(Mutex::new(thread_img_distribution));

     let mut running_threads = vec![];

     for img_bundle in thread_img_distribution {
         let loc_tx = tx.clone();
         running_threads.push(thread::spawn(move || {
             for path in img_bundle.1 {
                let feature_data = extract_features(path,35,30);
                //final_feature_map.insert(feature_data.0,feature_data.1);
                loc_tx.send(feature_data).unwrap();
             }
         }));
         index+=1;
     }

     for t in running_threads {
         t.join();
     }

     for d in rx.iter().take(thread_count) {
         final_feature_map.insert(d.0,d.1);
     }

    //let mut file = File::create(format!("{}/feature_extraction.data",result_path));
    //file.write_all(format!("{:?}",final_feature_map));

    //let data = "Some data!";
    fs::write(format!("{}/feature_extraction.json",result_path), format!("{:?}",final_feature_map)).expect("Unable to write file");

     //println!("final_feature_map: {:?}",final_feature_map);
    println!("{}",thread_count);
    //serde_json::to_writer(file, hashmap)?;
}