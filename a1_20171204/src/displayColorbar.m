function bar = displayColorbar(im, k)

bar = zeros(250 , 250*k);
bar = uint8(bar);

[unique_colors, ~, n] = unique(im, 'rows');
color_freq = accumarray(n,1);
for i=1:k
    [~, ind] = max(color_freq);
    color_freq = color_freq(i+1 : size(color_freq));
    bar(:, 250*(k-1)+1 : 250*k, 1) = unique_colors(ind, 1);
end

[nrows,ncols] = size(bar);
max_r = nrows + 20;
max_c = ncols + 20;
bar=padarray(bar,[(max_r-size(bar,1))/2 (max_c-size(bar,2))/2]);

end

