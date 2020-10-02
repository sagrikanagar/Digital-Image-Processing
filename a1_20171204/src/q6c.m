im = imread('eye.png');
ref = imread('eyeref.png');

im = rgb2gray(im);
ref = rgb2gray(ref);

out = histMatching(im, ref);

figure;
imshow(im);
figure;
imshow(ref);
figure;
imshow(out);