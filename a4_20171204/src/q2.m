%% 
kidney = imread('../input_data/kidney.jpg');
imshow(kidney);
k = find(kidney>128);
kidthresh = zeros(512,512);
kidthresh(k) = 1;
figure;
imshow(kidthresh);
d8 = strel('disk',8);
kidopen8 = imopen(kidthresh,d8);
figure;
imshow(kidopen8);
d1 = strel('disk',1);
kidclose1 = imclose(kidopen8,d1);
figure;
imshow(kidclose1);
b = bwlabel(kidclose1,8);
ll = label2rgb(b);
figure;
imshow(ll);

%%