A = [3 1 6; 
	 5 2 7];

x = [1 4 8];
y = [2 1 5];

x + y
x + A
x' + y
%A - [x' y'] % odstevamo lahko le matrike enakih dimenzij(2 3 - 3 2)
%[x; y'] % matriki lahko dodamo vektor, ki ima enako stevilo stolpcev kot matrika
[x; y]