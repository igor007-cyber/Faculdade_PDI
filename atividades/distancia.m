function [L1, L2] = distancia(p1,p2)

c = p1 - p2;

L1 = norm(c, 2); % euclidiana
L2 = norm(c, 1); % city-block

display("Euclidiana: ")
display(L1)
display(" ")
display("City-Block: ")
display(L2)

endfunction
