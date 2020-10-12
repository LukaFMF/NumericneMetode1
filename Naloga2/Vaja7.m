0;
function [B,prod] = MatrikaB(_n,_m = _n)
	B = zeros(_n,_m);
	for i = 1:_n
		for j = 1:_m
		B(i,j) = (i*j)/(i + j);
		endfor
	endfor
	prod = prod(B(1,:));
endfunction

n = input("Vnesi stevilo n: ");
m = input("Vnesi stevilo m: ");

[mat,produkt] = MatrikaB(n,m);
mat
produkt