function final = linContrastStretching(im, a, b)

[h, w] = size(im);

max_intensity = max(im(:));
min_intensity = min(im(:));

for i = 1:h
    for j = 1:w
        im(i, j) = round(((im(i, j) -min_intensity)/(max_intensity-min_intensity))*(b-a)) + a;
    end
end

final = im;

end

        