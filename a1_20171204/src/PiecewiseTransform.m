function final = PiecewiseTransform(im, k1, k2, a, b)

final = double(im);
w = size(k1, 2);

k2 = k2*255;
a = a*255;
b = b*255;

for i = 1:w
    final(im>=a(i) & im<=b(i)) = k1(i)*double(im(im>=a(i) & im<=b(i))) + k2(i);
end

final = uint8(final);

end