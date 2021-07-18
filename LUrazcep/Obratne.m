1;

function x = obratnaSub(U,y)
	n = length(y);
	x = zeros(n,1);

	for i=n:-1:1
		x(i) = y(i) - U(i,n:-1:i+1)*x(n:-1:i+1);
		x(i) /= U(i,i);
	end
end

L = [4 5 2;
	 0 3 -3;
	 0 0 1];
a = [1,2,3];

obratnaSub(L,a)