close all;
clc;
clear all;

im = imread('canyon.png');
im = rgb2gray(im);
figure;
imshow(im);

[~, im1] = histEqualization(im);

figure;
imshow(im1);


[~, im2] = histEqualization(im);
figure;
imshow(im2);