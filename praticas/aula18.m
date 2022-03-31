clc;
clear all;
close all;

f = imread('weld.tif');
f = im2double(f);
imshow(f);
[c2,c1] = ginput(1);
close all;
c1 = round(c1);
c2 = round(c2);
g = zeros(size(f));
g(c1,c2) = 1;
figure,
imshow(g)
b = strel('square',3);
#{
for i=1:10
  close;
  figure,
  imshow(g); 
  g = imdilate(g,b);
endfor
#}
s = zeros(size(f));
m = f(c1,c2);
t1 = m * 0.8;
t2 = m * 1.2;
s(f > t1 & f < t2) = 1;

for i=1:500
  g = imdilate(g,b);
  g = g & s;
endfor
figure,
imshow(g);