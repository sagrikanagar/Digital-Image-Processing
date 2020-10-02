close all;
% clear all;
clc;

im = imread('cameraman.png');

if size(im, 3) >1
    im = rgb2gray(im);
end

figure;
subplot(3, 3, 1);
imshow(im);
title('Original Image');

for k = 1:8
    im1 = bitget(im, k); 
    subplot(3,3,k+1); 
    imshow(logical(im1));
    title(strcat('Bit plane', num2str(k)));
end
