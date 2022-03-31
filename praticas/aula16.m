clc 
clear all
close all

f = zeros(200,200);
f(21:180, 21:180) = 1;
f(91:110, 41:60) = 0;
f(91:110,141:160) = 0;

g = imfill(f);% vai tampar os buracos na imagem
imshow(g)