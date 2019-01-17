clear all
close all

y = imread('lena512.bmp');

y = double(y)/255;

%y = rgb2gray(y);

imshow(y)

for i = 2:511
    for j = 2:511
        
        y(i, j) = 1/9*y(i-1, j-1) +  1/9*y(i-1, j) +  1/9*y(i-1, j+1) +  1/9*y(i, j-1) +  1/9*y(i, j) +  1/9*y(i, j+1) +  1/9*y(i+1, j-1) +  1/9*y(i+1, j) +  1/9*y(i+1, j+1);
   
    end
end

figure;
imshow(y);
