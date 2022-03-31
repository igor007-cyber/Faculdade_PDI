clc 
clear all
close all

f = zeros(205,300);
f(51:155, 61:240)=1;
f(81:85, 61:100) = 0;
f(106:125, 61:100) = 0;
f(51:85, 201:240) = 0;
f(131:1, 201:240) = 0;
f(100:121, 201:240) = 0;
f(125:200, 201:240) = 0;
#imshow(f)

b = strel ("arbitrary", 1);%strel('disk',3,0)
g = imopen(f,b);
g = imclose(f,b);
imshow(g)