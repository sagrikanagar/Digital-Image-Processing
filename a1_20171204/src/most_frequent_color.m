function [color_freq, most_frequent] = most_frequent_color(im)

new_im = reshape(im, [], 3);
[unique_colors, ~, n] = unique(new_im, 'rows');

color_freq = accumarray(n, 1);
[~, color] = max(color_freq);
most_frequent = unique_colors(color, :);
end