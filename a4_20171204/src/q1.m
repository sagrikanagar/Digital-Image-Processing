i = imread('../input_data/star.jpeg');
i = 1-imbinarize(i);
I = 1-i;
s1 = [0,0,0;3,1,3;1,1,1];
s2 = [3,0,0;1,1,0;3,1,3];
while true
    j = i;
    i = imflt(imflt(i,s1),s2);
    i = imflt(imflt(i,rot90(s1,1)),rot90(s2,1));
    i = imflt(imflt(i,rot90(s1,2)),rot90(s2,2));
    i = imflt(imflt(i,rot90(s1,3)),rot90(s2,3));
    if j==i
        break;
    end
end

subplot(1,2,1);imshow(I);
subplot(1,2,2);imshow(1-imbinarize(i));

function y = imflt(i,f)
y = i;
for j=1:size(i,1)-2
    for k=1:size(i,2)-2
        if filterchck(i(j:j+2,k:k+2),f)
            y(j+1,k+1) = 0;
        end
    end
end
end

function y = filterchck(i,f)
y = true;
for j=1:3
    for k = 1:3
        if f(j,k) == 3
            continue;
        elseif f(j,k) ~= i(j,k)
            y = false;
            break;
        end
        if ~y
            break
        end
    end
end
end