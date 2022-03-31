close all 
clear all
clc

a = imread('images2.tif');
g = bitget(a,55);
figure, subplot(1,2,1), imshow(g);
figure, subplot(1,2,2), imshow(a);
