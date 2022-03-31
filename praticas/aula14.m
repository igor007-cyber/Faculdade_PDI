clc
close all
clear all

f = imread('esqueleto.jpg');
f = im2double(f); 
%f = rgb2gray(f);
%imhist(f);
%imshow(f);

g1 = im2bw(f,0.6);
#figure,
#imshow(g1);

g2=f.*g1;#branco
g2=f.*[1-g1];#preto

b = strel('diamond',2);
g3 = imdilate(g1,b);

g4 = imerode(g1,b);

g5 =imerode(g1,b);
bw3 = g1 - g5;
figure,
imshow(bw3);

%{
g = zeros(200,200);
g(70:130,30:120) = 1;
g(95:105,120:160) = 1;
g(95:105,30:60) = 0;
g = [f2 imrotate(g,90)];
