clc 
clear all
close all

f = imread('letra.jpg');
f = rgb2gray(f);
f = im2double(f);
#h = fspecial('motion',360);

g1 = fspecial('gaussian', 50,5);
%g1 = imnoise(f,'gaussian', 50,1);
#%g2=imnoise(f,'salt & pepper',0.01);
%g = imfilter(f,h,'symmetric'); 
%r = medfilt2(g2,[6 6]);

x = imfilter(f,g1,'symmetric');
z = f-x;
z = z+f;


subplot(1,2,1),imshow(f);
subplot(1,2,2),imshow(z);
