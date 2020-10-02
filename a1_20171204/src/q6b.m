im = imread('horse.jpg');

im = rgb2gray(im);
[~, out] = histEqualization(im);

figure;
subplot(1, 2, 1);
imshow(im);
subplot(1, 2, 2);
imshow(out);