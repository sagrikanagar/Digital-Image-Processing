close all;

im1 = rgb2gray(imread('part1.png'));
im2 = rgb2gray(imread('part2.png'));
im3 = rgb2gray(imread('part3.png'));
im4 = rgb2gray(imread('part4.png'));

im = rgb2gray(imread('canyon.png'));
[row, col] = size(im);
end1 = round(row/2);
end2 = round(col/2);
topleft =  im(1:end1, 1:end2);
topright = im(1:end1, end2+1:col);
bottomleft = im(end1+1:row, 1:end2);
bottomright = im(end1+1:row, end2+1:col);

% imshow(topleft);

im1 = histMatching(im1, topleft);
im2 = histMatching(im2, topright);
im3 = histMatching(im3, bottomleft);
im4 = histMatching(im4, bottomright);

out = [im1, im2; im3, im4];
figure;
subplot(2, 1, 1);
imshow(im);
subplot(2, 1, 2);
imshow(out);