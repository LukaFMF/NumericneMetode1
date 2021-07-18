1;

function [L,U] = LUrazcep(A)
	n = length(A);

	for j=1:n-1
		for i=j+1:n
			A(i,j) = A(i,j)/A(j,j);
			for k =j+1:n
				A(i,k) = A(i,k)-A(i,j)*A(j,k);
			end
		end
	end

	L = eye(n,n) + tril(A,-1);
	U = triu(A);
end

function y = premaSub(L,b)

	n = length(b);
	y = zeros(n,1);

	for i=1:n
		y(i) = b(i) - L(i,1:i-1)*y(1:i-1);
	end
end

function x = obratnaSub(U,y)
	n = length(y);
	x = zeros(n,1);

	for i=n:-1:1
		x(i) = y(i) - U(i,i+1:n)*x(i+1:n);
		x(i) /= U(i,i);
	end
end


A = [4 3 4;
	 3 4 5;
	 4 7 4];

b = [1,2,3];

[L,U] = LUrazcep(A);

# Ax = LUx = b 
# Ly = b, Ux = y

y = premaSub(L,b);
x = obratnaSub(U,y);
disp(x);
