clear all
close all
clc

%{
f = imread('images2.tif');
imagesc(f);  ele coloca um cor mais quente na imagem. Exemplos de cor: colormap jet ou hot ou winter
g = f(70:150,70:150);
imshow(g);
figure,
surf(g)
mesh(g)


f = magic(5);
f(3,:)#linha completa
f(:,3)%coluna completa
f(2:3,4:5)
f' %ao contrario
f(:) # vetorizado
f(2:2:end)
a(a>10)
%}

f = imread('images2.tif');
g = f(1:5:end,1:5:end);
figure,
imshow(f)
figure,
imshow(g)


