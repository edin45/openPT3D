import cv2
import os
import json

# Save image in set directory
# Read RGB image
class DetectFeatures:

    def __init__(self, resize_factor,imgs_folder,orb_or_sift,max_distance,result_folder):
        self.resize_factor = resize_factor
        self.imgs_folder = imgs_folder
        self.orb_or_sift = orb_or_sift
        self.max_distance = max_distance
        self.result_folder = result_folder

    def detect_features(self):
        def load_images_from_folder(folder):
            images = []
            imgs_folder = os.listdir(folder)
            index = 1
            for filename in imgs_folder:
                img = cv2.imread(os.path.join(folder,filename))
                if img is not None:
                    print(f"Loading: Img {index} / {len(imgs_folder)}")
                    images.append(cv2.resize(img, (int(img.shape[0]/self.resize_factor),int(img.shape[1]/self.resize_factor)), interpolation = cv2.INTER_AREA))
                    index+=1
            return images

        print("Loading Images...")
        self.imgs = load_images_from_folder(str(self.imgs_folder))

        #Detect and Compute all imgs with ORB
        orb = cv2.ORB_create() if self.orb_or_sift else cv2.SIFT_create()
        detectedAndComputedImgsKp = []
        detectedAndComputedImgsDes = []

        index = 1
        for img in self.imgs:
            print(f"Detecting Features: {index} / {len(self.imgs)}")
            kp, des = orb.detectAndCompute(img, None)
            detectedAndComputedImgsKp.append(kp)
            detectedAndComputedImgsDes.append(des)
            index+=1


        self.matches_map = {}

        # Brute Force Matching
        for template_img in range(0, len(detectedAndComputedImgsDes)):
            print(f"Matching Features: {template_img+1} / {len(detectedAndComputedImgsDes)}")
            for i in range(0,len(detectedAndComputedImgsDes)):    
                if i != template_img:
                    bf = cv2.BFMatcher(cv2.NORM_HAMMING if self.orb_or_sift == "1" else cv2.NORM_L1, crossCheck=True)
                    matches = bf.match(detectedAndComputedImgsDes[template_img], detectedAndComputedImgsDes[i])

                    #matches = sorted(matches, key = lambda x:x.distance)
                    self.matches_map[f"{template_img}_{i}"] = {
                        "template_keypoints" : detectedAndComputedImgsKp[template_img],
                        "right_keypoints" : detectedAndComputedImgsKp[i],
                        "matches" : matches,
                    }
                    # For each match...
                    #for mat in matches:

                    #    if mat.distance < self.max_distance:
                    #        # Get the matching keypoints for each of the images
                    #        img1_idx = mat.queryIdx
                    #        img2_idx = mat.trainIdx

                            # x - columns
                            # y - rows
                            # Get the coordinates
                    #        (x1, y1) = detectedAndComputedImgsKp[template_img][img1_idx].pt
                    #        (x2, y2) = detectedAndComputedImgsKp[i][img2_idx].pt

                            # Append to each list
                    #        matches_map[f"{template_img}_{i}"]["template_img_matches"].append((x1, y1))
                    #        matches_map[f"{template_img}_{i}"]["other_img_matches"].append((x2, y2))

        #with open(f"{self.result_folder}/features.json", "w") as outfile:
        #    json.dump(self.matches_map, outfile)