function out = mergeImage(fg, bg)
[~, most_freq] = most_frequent_color(fg);
% disp(most_freq);
max_color = max(most_freq);

[h, w ,c] = size(fg);
[hb, wb ,cb] = size(bg);
fg = imresize(fg, [hb wb]);

% disp(max_color);
for i = 1:h
    for j = 1:w
        diff_red = abs(most_freq(1) - fg(i, j, 1));
        diff_green = abs(most_freq(2) - fg(i, j, 2));
        diff_blue = abs(most_freq(3) - fg(i, j, 3));
        if diff_red <= 10 && diff_green <= 10 && diff_blue <= 10
                fg(i, j, :) = bg(i, j, :);
        end
    end
end

out = fg;

end