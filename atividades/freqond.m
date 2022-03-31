function f = freqond(L1, L2)
  i = 1;
  
  while L1 <= L2  
    v = (2.98*10^8)/L1;
    f(i) = v;
    i = i + 1;
    L1 = L1 + 1;
  end 
  
  display(f)
  
endfunction