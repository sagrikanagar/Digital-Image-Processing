close all;
clc;
img = imread('gamma-corr.png');
img = im2double(img);
figure;
subplot(2, 3, 1);
imshow(img);
title('Original Image');

gamma = [0.20 0.67 3.0 4.0 5.0] ;


for i = 1:5
    temp = zeros(size(img));
    temp = img.^gamma(i);
    subplot(2, 3, i+1); 
    imshow(temp);
    title(strcat('gamma = ', num2str(gamma(i))));
end


