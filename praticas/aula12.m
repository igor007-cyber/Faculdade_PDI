clc
clear all
close all


f = imread('lena.tif');
g = imadjust(f,[0 1],[0.4 0.7]);
d = imadjust(g,[0.4 0.7],[0 1]);
i = imadjust(f,[0.4 0.7],[0 1]);
o = imadjust(g,[0.5 0.6],[0 1]);
o = imadjust(f,[0.1 0.5],[1 0]);%teste
#imhist(f);
#figure,
imshow(f);

figure,
imshow(g);
#figure,
#imhist(g);

#figure,
#imshow(d);
#figure,
#imhist(d);

#figure,
#imshow(i);
#figure,
#imhist(i);

#{
figure,
imshow(o);
figure,
imhist(o);
#}
figure,
subplot(1,2,1), imhist(f);
subplot(1,2,2), imhist(g);