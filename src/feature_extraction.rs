use image::GenericImageView;

use std::path::Path;
use std::collections::HashMap;

fn print_type_of<T>(_: &T) {
    println!("{}", std::any::type_name::<T>())
}

pub fn extract_features(img_path: &str,feature_difference_threshold: i16) {
    let img = image::open(&Path::new(img_path)).unwrap();
    let img_width = img.dimensions().0;
    let img_height = img.dimensions().1;

    println!("width: {}, height: {}",img_width,img_height);

    //let mut contrasty_pixels = HashMap<Tuple,Tuple>::new();
    let mut index = 0;
    
    let img_pixels = img.pixels();

    let mut previous_pixel_data:(u32, u32, image::Rgba<u8>) = (0,0,img.get_pixel(0,0));

    let mut imgbuf = image::ImageBuffer::new(img_width, img_height);

    let mut contrasty_pixels = HashMap::<String,bool>::new();

    for p in img.pixels() {
        if index > 0 {
            let mut r_diff = p.2.0[0] as i16 - previous_pixel_data.2.0[0] as i16;
            let mut g_diff = p.2.0[1] as i16 - previous_pixel_data.2.0[1] as i16;
            let mut b_diff = p.2.0[2] as i16 - previous_pixel_data.2.0[2] as i16;
            if r_diff < 0 {
                r_diff = r_diff*-1;
            }
            if g_diff < 0 {
                r_diff = r_diff*-1;
            }
            if b_diff < 0 {
                r_diff = r_diff*-1;
            }
            let total_difference = r_diff+g_diff+b_diff;
            if total_difference > feature_difference_threshold {
                println!("pixels: {}, {} have a total difference of {}",p.0,p.1,total_difference);
                contrasty_pixels.insert(format!("{}{}",p.0,p.1),true);
            }
        }
        previous_pixel_data = p;
        index+=1;
    }

    for (x, y, pixel) in imgbuf.enumerate_pixels_mut() {
        let key = format!("{}{}",x,y);
        if contrasty_pixels.contains_key(&key) {
            *pixel = image::Rgb([255 as u8, 255 as u8, 255 as u8]);
        }else{
            *pixel = image::Rgb([0, 0, 0]);
        }
    }

    imgbuf.save("result.png").unwrap();

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