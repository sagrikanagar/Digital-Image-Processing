im = imread('same_hist1.png');
ref  =imread('same_hist2.png');

out = histMatching(im, ref);
figure;
imshow(out);

im = imread('darkchurch.jpg');
ref  =imread('lightchurch.jpg');

out = histMatching(im, ref);
figure;
imshow(out);

out = histMatching(ref, im);
figure;
imshow(out);
