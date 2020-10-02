function final = histMatching(im, ref)

final = zeros(size(im));

[si, ~] = histEqualization(im);
[sr, ~] = histEqualization(ref);

F = zeros(size(sr));
min = 100000;
min_i = -1;

for i = 1:size(si, 1)
   for j = 1:size(sr, 1)
       diff = abs(si(i, 1) - sr(j,1));
       if diff == 0
           min_i = j;
           break;
       elseif diff < min
           min_i = j;
           min = diff;
       end
    end
    F(i, 1) =min_i;
    min_i =-1;
    min = 100000;
end

out=zeros(size(im(:)));
for k=1:size(F,1) 
    ind=find(im==k-1);
    out(ind)=F(k,1);
end 

out = uint8(out);
final = reshape(out, size(im));

end