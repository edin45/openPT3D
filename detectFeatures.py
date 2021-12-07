import cv2
import os
import json

# Save image in set directory
# Read RGB image

resize_factor = 1
imgs_folder = input("Images folder: ")
result_folder = input("Result folder: ")
max_distance = input("Max Distance (Default: 60): ")
if max_distance == "":
    max_distance = 60
else:
    max_distance = int(max_distance)


def load_images_from_folder(folder):
    images = []
    for filename in os.listdir(folder):
        img = cv2.imread(os.path.join(folder,filename))
        if img is not None:
            images.append(cv2.resize(img, (int(img.shape[0]/resize_factor),int(img.shape[1]/resize_factor)), interpolation = cv2.INTER_AREA))
    return images

imgs = load_images_from_folder(str(imgs_folder))

#Detect and Compute all imgs with SIFT
orb = cv2.ORB_create()
detectedAndComputedImgsKp = []
detectedAndComputedImgsDes = []

for img in imgs:
    kp, des = orb.detectAndCompute(img, None)
    detectedAndComputedImgsKp.append(kp)
    detectedAndComputedImgsDes.append(des)


matches_map = {}

# Brute Force Matching
# ToDo: Implement Multithreading for this step
for template_img in range(0, len(detectedAndComputedImgsDes)):
    print(f"Img: {template_img+1}/{len(detectedAndComputedImgsDes)}")
    for i in range(0,len(detectedAndComputedImgsDes) - 1):
        if i != template_img:
            bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)
            matches = bf.match(detectedAndComputedImgsDes[template_img], detectedAndComputedImgsDes[i])
            #matches = sorted(matches, key = lambda x:x.distance)
            matches_map[f"{template_img}_{i}"] = {
                "template_img_matches" : [],
                "other_img_matches" : [],
            }
            # For each match...
            for mat in matches:

                if mat.distance < max_distance:
                    # Get the matching keypoints for each of the images
                    img1_idx = mat.queryIdx
                    img2_idx = mat.trainIdx

                    # x - columns
                    # y - rows
                    # Get the coordinates
                    (x1, y1) = detectedAndComputedImgsKp[template_img][img1_idx].pt
                    (x2, y2) = detectedAndComputedImgsKp[i][img2_idx].pt

                    # Append to each list
                    matches_map[f"{template_img}_{i}"]["template_img_matches"].append((x1, y1))
                    matches_map[f"{template_img}_{i}"]["other_img_matches"].append((x2, y2))

with open(f"{result_folder}/features.json", "w") as outfile:
    json.dump(matches_map, outfile)