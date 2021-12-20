function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
    [m n nr_colors] = size(f);
    if (x -1 < 1 || x + 1 > n)
      r = 0;
      return;
    endif
    
    if (y -1 < 1 || y + 1 > m)
      r = 0;
      return;
    endif
    
    % TODO: calculeaza derivata
     dif1 = f(y - 1,x - 1) + f(y + 1, x + 1);
     dif2 = f(y - 1,x + 1) + f(y + 1, x - 1);
     sum = dif1 - dif2;
      r = sum / 4;
endfunction