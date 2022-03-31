clc;
clear all;
close all;

f = imread('leaf.tif');
f1 = imread('predio.tif');
v = edge(f1,'LoG');
imshow(v);
v = edge(f1,'canny');
figure,
imshow(v);
v = edge(f1,'canny', 0.1,5);
figure,
imshow(v);
g = im2bw(f,0.2);
b = strel('square',3);
%g1 = imerode(g,b)
S(:,:,1) = f - imopen(f,b);
g1 = f;
for i = 2:30
  g1 = imerode(g1,b);
  g2 = imopen(g1,b);
  S(:,:,i) = g1 - g2;
endfor

g3 = sum(S,3);
#imshow(g3);

g = bwmorph(f,'skel',30);
#figure,
#imshow(g);
