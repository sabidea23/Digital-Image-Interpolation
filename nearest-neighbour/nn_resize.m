function R = nn_resize(I, p, q)
    % =========================================================================
    % Upscaling de imagine folosind algoritmul de interpolare nearest-neighbour
    % Transforma imaginea I din dimensiune m x n in dimensiune p x q
    % =========================================================================
    [m n nr_colors] = size(I);

    % ignora imagini care nu sunt alb negru
    if nr_colors > 1
        R = -1;
        return
    endif
    
    % TODO: cast I la double
      I = double(I);
      
    % initializeaza matricea finala
    R = zeros(p, q);

    % Obs:
    % Atunci cand se aplica o scalare, punctul (0, 0) al imaginii nu se va
    % deplasa.
    % In Octave, pixelii imaginilor sunt indexati de la 1 la n.
    % Daca se lucreaza in indici de la 1 la n si se inmulteste x si y cu s_x
    % si s_y, atunci originea imaginii se va deplasa de la (1, 1) la (sx, sy)!
    % De aceea, trebuie lucrat cu indici in intervalul de la 0 la n - 1!

    % TODO: calculeaza factorii de scalare
    % Obs: daca se lucreaza cu indici in intervalul [0, n - 1], ultimul
    % pixel al imaginii se va deplasa de la (m - 1, n - 1) la (p, q).
    % s_x nu va fi q ./ n
    
    s_x = (q - 1) / (n - 1);
    s_y = (p - 1) / (m - 1);
    scale = [s_x s_y];
    
    % TODO: defineste matricea de transformare pentru redimensionare
    Trans = diag(scale);
    
    % TODO: calculeaza inversa transformarii
    Inv_trans = inv(Trans);
    
    % parcurge fiecare pixel din imagine
    % foloseste coordonate de la 0 la n - 1
    for y = 0 : p - 1
        for x = 0 : q - 1
             % TODO: aplica transformarea inversa asupra (x, y) si calculeaza
            % x_p si y_p din spatiul imaginii initiale
            v = zeros(2,1);
            v = Inv_trans * [x ; y];
            x_p = v(1);
            y_p = v(2);
            
            % TODO: trece (xp, yp) din sistemul de coordonate de la 0 la n - 1 in
            % sistemul de coordonate de la 1 la n pentru a aplica interpolarea
            x_p = x_p + 1;
            y_p = y_p + 1;
            
            % TODO: calculeaza cel mai apropiat vecin
               closest_x_p = round(x_p);
               closest_y_p = round(y_p);
               
            % TODO: calculeaza valoarea pixelului din imaginea finala
            R(y + 1, x + 1) = I(closest_y_p, closest_x_p);

        endfor
    endfor

    % TODO: converteste matricea rezultat la uint8
     R = uint8(R);
endfunction
