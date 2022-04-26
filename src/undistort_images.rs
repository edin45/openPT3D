pub fn undistort_images(img_path_in: &str,img_path_out: &str) {

    // let camera_matrix = [5000,0,0, 0, 3000, 0, 0, 0, 1];//[fx,0,cx, 0, fy, cy, 0, 0, 1];
    // let mut camera_matrix_new = [5000,0,0, 0, 3000, 0, 0, 0, 1];//[fx,0,cx, 0, fy, cy, 0, 0, 1];
    // let dist_coeffs = [0,0,0,0,0,0,0,0,0,0,0,0,0,0];//[k1,k2,p1,p2,k3,k4,k5,k6,s1,s2,s3,s4,taux,tauy];

    // let img = image::open(&Path::new(img_path_in)).unwrap();
    // let img_width = img.dimensions().0;
    // let img_height = img.dimensions().1;

    //let file_name = "foo.jpg";
    match rexif::parse_file(&img_path_in) {
        Ok(exif) => {
            println!("{} {} exif entries: {}", img_path_in, exif.mime, exif.entries.len());
            for entry in &exif.entries {
                println!("\t{}: {}", entry.tag, entry.value_more_readable);
            }
        },
        Err(e) => {
            print!("Error in {}: {}", &img_path_in, e)
        }
    }

    // for path in &[img_path_in] {
    //     let file = std::fs::File::open(path)?;
    //     let mut bufreader = std::io::BufReader::new(&file);
    //     let exifreader = exif::Reader::new();
    //     let exif = exifreader.read_from_container(&mut bufreader)?;
    //     for f in exif.fields() {
    //         println!("{} {} {}",
    //                  f.tag, f.ifd_num, f.display_value().with_unit(&exif));
    //     }
    // }
    

}