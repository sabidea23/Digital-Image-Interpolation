function out = nn_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    R = img(:, :, 1);
    
    % TODO: extrage canalul verde al imaginii
    G = img(:, :, 2);
    
    % TODO: extrage canalul albastru al imaginii
    B = img(:, :, 3);

    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    R_resize = nn_resize(R, p, q);
    G_resize = nn_resize(G, p, q);
    B_resize = nn_resize(B, p, q);
    
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
     out = cat(3, R_resize, G_resize, B_resize);
endfunction
