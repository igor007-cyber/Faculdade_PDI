clc;
clear all;
close all;

f = imread('lincoln.tif');
f(end-10:end,:) = 0;
f2 = repmat(f,2,2);
[L,n] = bwlabel(f2);
imshow(L,[]);
L2 = L==4; 
P = bwperim(L2);
figure,
imshow(P);
area = sum(L2(:));
perimetro = sum(P(:));
compacidade = (perimetro^2)/area
B = bwboundaries(L2);
numel(f2)
numel(B{1})

