function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================
    
    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);
    
    % TODO: fa cast matricii I la double
      I = double(I);
    % TODO: calculeaza matricea cu derivate fata de x Ix
      for i = 1: m
        for j = 2 : n
          if (i == 1 && j == 1)
            Ix(i,j) = 0;
            break;
          endif
          Ix(i,j) = fx(I, j,i);
        endfor
      endfor
          
    % TODO: calculeaza matricea cu derivate fata de y Iy
      for i = 2 : m
        for j = 1 : n
          Iy(i,j) = fy(I, j,i);
        endfor
      endfor
      
    % TODO: calculeaza matricea cu derivate fata de xy Ixy
      for i = 2 : m
        for j = 2 : n
          Ixy(i,j) = fxy(I, j,i);
        endfor
      endfor
      
endfunction
