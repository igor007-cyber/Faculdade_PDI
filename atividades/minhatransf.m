function [g1, g2, g3, g4] = minhatransf (f, limiar, plano_bit, gamma)
      
      # G1 - NEGAÇÃO DA IMG #
      imread('images.jpeg');
      f = imread('images.jpeg');
      g1 = ones(size(f)).*255-f;
       
      # G2 - LIMIAR DA IMG # 
      f2 = im2double(f);
      g2 = zeros(size(f2));
      g2(find(f2 >=limiar)) = 1;
      g2 = logical(g2);
      
      # G3 - PLANO_BIT DA IMG #
      g3 = bitget(f, plano_bit + 1); 
      
      # G4 - GAMMA DA IMG #
      g4 = (f2 + 0.000001).^ gamma;
      g4 = g4./max(g4(:));
      g4 = im2double(g4);  
      
endfunction