clear all
close all

img = imread('lena512.bmp');

img = double(img)/255;

%img = rgb2gray(img);

imshow(img)

video = zeros(512, 512, 1, 25);

video (:, :, :, 1) = img;

for i = 2:25
    video (:, :, :, i) = circshift(img, i*3, 2);
    
end

implay (video)
