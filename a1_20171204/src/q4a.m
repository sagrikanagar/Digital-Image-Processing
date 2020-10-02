im = imread('lena.jpg');

im1 = BitQuantizeImage(im, 8);
max_intensity = max(im1(:)); 
im2 = NegativeTransformation(im1, max_intensity);


fig= figure;
subplot(1, 2, 1);
imshow(im1);
subplot(1, 2, 2);
imshow(im2);

print('lena_8', '-djpeg');

