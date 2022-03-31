clc
close all
clear all 

n = 30;
h = fspecial('gaussian',n,5); % sempre tem que ser 6x o numero do gaussiano
f = imread('cachorro.jpeg');
f = rgb2gray(f);
f = im2double(f);
imshow(f);
padarray(f,n-1);
g = imfilter(f,h);
figure,
imshow(g);
figure,
surf(h);


%{
if isrgb(f)
  f = rgb2gray(f);
endif

sum(sum(h*w))
help fspecial;
%}