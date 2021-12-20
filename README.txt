Dinu Andreea Sabina

->Interpolaea nearest-neighbour

Pentru functia nn 2x2(f, STEP) am gandit matricea finala ca fiind 
impartita in 4 zone distincte, de replicare a valorilor functiei f. 
Valoarea pixelului din imaginea finala este data de pozitia sa intr-o 
astfel de zona. Pentru cazul unei imagini colorate, am extras matricele
corespunzatoare fiecarui canal de culoare, pentru care am aplicat functia
de mai sus, iar in final am format matricea finala.

Pentru functia nn resize(I, p, q), in cadrul calculului
celor 2 constante de scalare, am tinut cont de pozitionarea pixelilor din
imaginea finala, deoarece in Octave indexarea incepe de la 1, nu de la 0.
Matricea de transformare are pe diagonala principala factorii de scalara,
in rest 0. Pentru fiecare pixel (x, y) din imaginea finala, am aplicat matricea inversa
de transformare am trecut in coordonatele imaginii initiale si am obtinut coordonatele (x_p, y_p).
Spre deosebire de functia nn 2x2(f, STEP), aici am folosit functia de rotunjire round(),
pentru simplificare. Pentru cazul unei imagini colorate, am extras matricele
corespunzatoare fiecarui canal de culoare, pentru care am aplicat functia
de mai sus, iar in final am format matricea finala.

->Interpolaea biliniara

La acest task imi apar warning-uri la compilare, insa obtin punctajul pentru
toate testele. 
Pentru calcularea coeficientilor biliniari, am calculat pe rand fiecare 
coloana a matricei A si am rezolvat sistemul de ecuatii liniare folosind operatorul
specific din Octave, "/", afland vectorul de coeficienti. 
Pentru functia de resize, dupa calculul  coordonatelor (x_p, y_p), am aflat 
coordonatele punctelor care le inconjoara,apeland surrounding_points(). Pentru 
aproximarea in sus am folosit functia ceil, iar pentru aproximare in jos, 
functia fix. Am aflat coeficientii biliniari si am calculat valoarea pixelului
din imaginea finala cu ajutorul acestora. 
Pentru functia bilinear_rotate, atunci cand coordonatele (x_p, y_p) nu se incadeaza in
dimensiunile imaginii, am pus un pixel negru (=0) si am trecut la calculul urmatorii valori 
din matricea finala. 

-> Interpolare bicubica

Pentru aproximarea derivatelor am tinut cont ca se considera si coordonatele x, y = −1
si x, y = 2 si la marginile imaginii am considerat ca derivatele sunt 0. 
La calcularea matricelor ce contin derivatele, am parcurs matricele cu 2 for-uri, iar
acolo unde erau probleme la functia de aproximare, am inceput for-ul de la 2, pentru a
fi sigura ca nu vor intra pe conditia pentru coordonatele care sunt la margine.

->Feedback 

Consider ca ideea de interpolare pe fotografii a fost una foarte interesanta si bine aleasa
pentru tema noastra. Scheletul de cod este foarte bine realizat, indicatiile sunt clare, 
si indicatiile din pdf-ul temei sunt complete. Am putut realiza usor tema, in ciuda faptului
ca nu sunt foarte priceputa la scris cod Octave. M-am bucurat sa invat atat de multe lucruri
despre fotografii si alcatuirea lor din pixeli, sa aflu functii cu care sa le citesc 
sub forma unei matrice precum imread si sa testez manual testele de la checker, pentru a
intelege mai bine algoritmul. De asemenea, am apreciat raspunsurile rapide si clare la 
intrebarile de pe forum, care m-au ajutat si pe mine la implementare.

->Punctaj obtinut local

nearest-neighbour: 30p
bilinear: 30p
bicubic : 35p