function r = fy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de y a lui f in punctul (x, y).
    % =========================================================================
     [m n nr_colors] = size(f);
     
    if (y - 1 < 1 || y + 1 > m)
      r = 0;
      return;
    endif
    
    % TODO: calculeaza derivata
      dif = f(y + 1, x) - f(y - 1, x);
      r = dif / 2;
endfunction