use image::GenericImageView;

use std::path::Path;
use std::collections::HashMap;

// ToDo: Optimize the feature extraction, because you can have 3x the extracted features if you don't let occupied_pixels map be so cluttered with failed features, I tried to do it but it left the feature extraction about 4x slower, so I will have to come back to it

pub fn extract_features(img_path: &str,feature_difference_threshold: i16,feature_size: u32) {
    //Open the Image
    let img = image::open(&Path::new(img_path)).unwrap();
    let img_width = img.dimensions().0;
    let img_height = img.dimensions().1;

    println!("width: {}, height: {}",img_width,img_height);

    let mut index:i32 = 0;
    
    let mut previous_pixel_data:(u32, u32, image::Rgba<u8>) = (0,0,img.get_pixel(0,0));

    //let mut imgbuf = image::ImageBuffer::new(img_width, img_height);

    //let mut contrasty_pixels = HashMap::<String,bool>::new();

    let mut occupied_pixels = HashMap::<(u32,u32),bool>::new();
//: Vec<Vec<image::Rgba<u8>>>
    let mut final_features: Vec::<Vec::<image::Rgba<u8>>> = Vec::new();
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
                            let key = (x+p.0,y+p.1);
                            if occupied_pixels.contains_key(&key) {
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
        let mut pixel_data_bundle: Vec<image::Rgba<u8>> = vec![];
        for x_y in item {
            let pixel = img.get_pixel(x_y.0,x_y.1);
            pixel_data_bundle.push(pixel);
        }
        final_features.push(pixel_data_bundle);
    }

    println!("Found {} features",final_features.len());

    //  for (x, y, pixel) in imgbuf.enumerate_pixels_mut() {
    //      let key = format!("{}{}",x,y);
    //      if occupied_pixels.contains_key(&key) {
    //          *pixel = image::Rgb([255 as u8, 255 as u8, 255 as u8]);
    //      }else{
    //          *pixel = image::Rgb([0, 0, 0]);
    //      }
    //  }

    //  println!("Saving image");

    //   imgbuf.save("result.png").unwrap();

    //  println!("Saved image");

    // for p in img.pixels() {

    //     //println!("p: {:?}",p.2.0[0]);
    //     if(index > 0) {
    //         let r_diff = p.2.0[0];
    //         let g_diff = p.2.0[0];
    //         let b_diff = p.2.0[0];
    //     }
    //     index++1;
    // }
}