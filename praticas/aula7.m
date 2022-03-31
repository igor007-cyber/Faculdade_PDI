clear all
close all
clc

zeros(3,3) % vai criar uma matriz de 3l e 3c
ones(3,3) % vai criar uma matriz de 3l e 3c
sqrt(9)

sum(abs(c)) % ele vai somar e deixar os valores positivos
sumsq(c) % ele vai somar e elevar os numeros ao quadrado
max(abs(c)) % ele vai pegar o valor maximo do vetor 

norm(c, 1) % city-block
norm(c,2)% euclidiana
norm(c,'inf')