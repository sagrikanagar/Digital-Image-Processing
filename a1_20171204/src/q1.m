fg = imread('fg.jpg');
bg = imread('bg.jpg');

out = mergeImage(fg, bg);
figure;
imshow(out);