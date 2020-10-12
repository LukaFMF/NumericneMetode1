A = [3 2 8 1;
     7 2 5 6;
     0 7 3 5]

A' % transponira A
A(2,3) % element v drugi vrstici in tretjem stolpcu 
A(:,[1 4]) % presek vseh vrstic in prvega ter četrtega stolpca
A([2 3], [3 1]) % presek druge in tretje vrstice in tretjega ter drugega stolpca
A(:, 1:2:end) % presek vseh vrstic in lihih stolpcev 
A(:, [1 2 4]) % presek vseh vrstic in prvega, drugega in četrtega stolpca
A(:) % cela matrika v stolpcu
[A; A(end, :)] % matriki doda šte eno zadnjo vrstico, ki je enaka trenutni zadnji
A + eye(3,4) % po diagonali matriki prišteje 1
A - 3 % od vsakega elementa matrike odšteje 3
A(end:-1:1,:) % zamenja vrstni red vrstic matrike (lahko uporavbimo tudi funkcijo flipud())
fliplr(A) % zamenja vrstni red stolpcev
diag(A) % vrne stolpični vektor, ki vsebuje diagonalo matrike 
diag(diag(A)) % vrne diagonalno matriko, katere diagonala je diagonala matrike A
tril(A) % vrne spodnjetrikotno verzijo matrike A(vključno z diagonalo)
triu(A) % vrne zgornjetrikotno verzijo matrike A(vključno z diagonalo)
A*A' % zmnoži matriko A samo s seboj po pravilu množenja matrik 
A.^2 % kvadrira vsak element matrike A
exp(A) % vrne matriko katere elementi so vrednoti funkcije e^x za istoležni element matrike A
size(A) % število vrstic in stolpcev, ki jih ima matrika A
max(A) % vrne vrstični vektor, ki vsebuje največje vrednosti vsakega stolpca matrike A
max(max(A)) % vrne najvecjo vrednost v matriki A
A == 2 % vrne (0,1) matriko, ki ima 1 kjer je element matrike A enak 2 in 0 povsod drugje
A ~= 2 % vrne (0,1) matriko, ki ima 0 kjer je element matrike A enak 2 in 1 povsod drugje
A > 2  % vrne (0,1) matriko, ki ima 1 kjer je element matrike A večji od 2 in 0 povsod drugje


