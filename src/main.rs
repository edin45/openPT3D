use std::thread;
use std::time::Duration;

mod feature_extraction;

fn main() {
    /*thread::spawn(|| {
        feature_extraction::extract_features("/media/edin/21e2cbef-5a87-475b-8753-31755e0a279d1/3dscanning/wood_watering_place_001/processed/IMG_6212.tif",35,50);    
    });
    thread::spawn(|| {
        feature_extraction::extract_features("/media/edin/21e2cbef-5a87-475b-8753-31755e0a279d1/3dscanning/wood_watering_place_001/processed/IMG_6211.tif",35,50);    
    });
    thread::spawn(|| {
        feature_extraction::extract_features("/media/edin/21e2cbef-5a87-475b-8753-31755e0a279d1/3dscanning/wood_watering_place_001/processed/IMG_6210.tif",35,50);    
    });
    thread::spawn(|| {
        feature_extraction::extract_features("/media/edin/21e2cbef-5a87-475b-8753-31755e0a279d1/3dscanning/wood_watering_place_001/processed/IMG_6209.tif",35,50);    
    });
    thread::spawn(|| {
        feature_extraction::extract_features("/media/edin/21e2cbef-5a87-475b-8753-31755e0a279d1/3dscanning/wood_watering_place_001/processed/IMG_6208.tif",35,50);    
    });
    thread::spawn(|| {
        feature_extraction::extract_features("/media/edin/21e2cbef-5a87-475b-8753-31755e0a279d1/3dscanning/wood_watering_place_001/processed/IMG_6207.tif",35,50);    
    });
    thread::spawn(|| {
        feature_extraction::extract_features("/media/edin/21e2cbef-5a87-475b-8753-31755e0a279d1/3dscanning/wood_watering_place_001/processed/IMG_6206.tif",35,50);    
    }); */
    
    feature_extraction::extract_features("/home/edin/Downloads/testset-ga/IMG_3485.JPG",35,30);
}
