close all;
clc;

im = imread('quantize.jpg');

if(size(im, 3)>1)
    im = rgb2gray(im);
end

color_bar = displayColorbar(im, 10);
figure;
subplot(2, 2, 1);
imshow(im);
subplot(2, 2, 3);
imshow(color_bar);

new_im = linContrastStretching(im, 0, 255);
color_bar1 = displayColorbar(new_im, 10);

subplot(2, 2, 2);
imshow(new_im);
subplot(2, 2, 4);
imshow(color_bar1);