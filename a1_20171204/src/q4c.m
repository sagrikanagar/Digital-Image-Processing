im  = imread('lena.jpg');

k1 = [0, 4/3, -2, 0];
k2 = [0, 0, 2, 0];
a = [0, 0.3, 0.6, 0.8];
b = [0.3, 0.6, 0.8, 1];
im1 = PiecewiseTransform(im, k1, k2, a, b);
figure;
imshow(im1);

k1 = [0, 0, 0, 0, 0];
k2 = [0, 0.2, 0.4, 0.6, 0.8];
a = [0, 0.2, 0.4, 0.6, 0.8];
b = [0.2, 0.4, 0.6, 0.8, 1];
im1 = PiecewiseTransform(im, k1, k2, a, b);
figure;
imshow(im1);

