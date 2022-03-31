clc;
close all;
clear all; 

f = imread('cachorro.jpeg');
f = imresize(f,0.2);
f = rgb2gray(f);
f = im2double(f); 

filtro = [1 2 1;0 0 0;-1 -2 -1];

g = imfilter(f,filtro);
h2 = imrotate(filtro,90);
g2 = imfilter(f,h2);

g3 = g + g2;

subplot(2,2,1),imshow(f);
subplot(2,2,2),imshow(g);
subplot(2,2,3),imshow(g2);
subplot(2,2,4),imshow(g3);


g4 = f + 0.1*g3;
figure,
subplot(1,2,1),imshow(f);
subplot(1,2,2),imshow(g4);
