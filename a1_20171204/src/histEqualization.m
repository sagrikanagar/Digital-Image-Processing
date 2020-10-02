function [lut, final] = histEqualization(im)

[w, h] = size(im);
[counts, ~] = imhist(im);

pdf = counts./(w*h);
cdf = cumsum(pdf);
lut = round(255*cdf);
final = uint8(zeros(w, h));

for i = 1:size(lut, 1)
    final(im == i-1) = lut(i);
end

end