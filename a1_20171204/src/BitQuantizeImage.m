function quant_im = BitQuantizeImage(img, k)

quant_im = bitsrl(img, 8-k);
quant_im = bitsll(quant_im, 8-k);

end
