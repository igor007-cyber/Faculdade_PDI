clear all
close all
clc

n = input("N: ");

x = linspace(0, 0, n);
y = linspace(0, 0, n);

for i = 1 : n
  x(i) = input(sprintf("%d item de %d: ", i, n));
  y(i) = input(sprintf("%d item de %d: ", i, n));
endfor 

distancia(x,y);


