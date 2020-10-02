close all;

im = imread('lena.jpg');

figure;
subplot(3, 3, 1);
imshow(im);
title('Original Image');
    
for k=1:8
    im1 = BitQuantizeImage(im, k);
    subplot(3, 3, k+1);
    imshow(im1);
    title(strcat("k = ", num2str(k)));
end
