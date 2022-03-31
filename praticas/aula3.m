clear all
close all
clc

f = imread('images2.tif');
f = im2double(f);
%f = im2uint8(f);
g = f*0.1;
g = g.^2;
g = -100*g./log2(g);
%g = im2uint8(g);
g = g*3;
imwrite(g,'outraimagem.tif');
imshow(g)
figure,
imshow(f)

