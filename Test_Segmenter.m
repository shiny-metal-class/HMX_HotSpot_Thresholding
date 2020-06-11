[IMG_name,IMG_path] = uigetfile('*.tiff');
IMG = imread(fullfile(IMG_path,IMG_name));
IMG = imgaussfilt(IMG,3);
[BW,maskedImage] = segmentImageContour(IMG);
figure(1); imshow(BW);