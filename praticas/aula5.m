clear all
close all
clc

%{
i = imread('images2.tif');
% size(f); ele vai mostrar quantos pixels tem 
[l c] = size(i); % aqui vai armazenar em duas partes 
pc = [l/2 c/2];
i(pc(1)-50:pc(1)+49,pc(2)-50:pc(2)+49) = 0; %aqui ele vai sensurar a parte central da imagem
imshow(i)
length(i)% aqui ele mostrar a maior dimensão


v = [1:4:1820];
soma = v(1);

for i=2:length(v)
  soma = soma + v(i);
endfor
disp(soma)

tic;# ele começa a contar o tempo de execução
i = imread('images2.tif');
[l c] = size(i);
elem = l*c;
numel(i) % ele da a aquantidade de elementos
tempo = toc % ele termina a contagem de execução
%}

f = imread('images2.tif');
tic;
g = imresize(f,0.2, 'bicubic'); %  nearest, bilinear
t = toc
