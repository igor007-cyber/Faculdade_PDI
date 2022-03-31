close all 
clear all
clc

c = imread('cachorro.jpeg');
f = imread('colorida.jpeg');
#imshow(f);
%size(c);
# imshow(f(:,:,1)) tons de verde da primeira camada
#imshow(f(:,:,1))
#figure,
#imshow(f(:,:,2))
#figure,
#imshow(f(:,:,3))
#h(:,:,1) = c(:,:,3);

%imshow(c(:,:,3))
#eumapacores = [255 0 0; 0 255 0; 0 0 255; 125 45 188];
%eumapacores = [1 0 0; 0 1 0; 0 0 1; 0.5 0.4 0.8];
%h = h*3;
#imshow(h,eumapacores)
f = im2double(f);
tom = [1.74118   0.40784   0.37255];
h = rgb2gray(f);
h(:,:,2) = f(:,:,2);
h(:,:,3) = f(:,:,1);
#[h,cm] = rgb2ind(f);
v = zeros(size(f));
d = v;
for i=1:size(f,1)
  for i=1:size(f,1)
    d1 = abs(f(i,j,1)-tom(1));
    d2 = abs(f(i,j,2)-tom(2));
    d3 = abs(f(i,j,3)-tom(3));
    d(i,j) = d1 + d2 + d3;
    
    if d(i,j) > 0.5;
      h(i,j,1) = f(i,j,1);
      h(i,j,2) = f(i,j,2);
      h(i,j,3) = f(i,j,3)*3;
    endif
  endfor  
endfor


