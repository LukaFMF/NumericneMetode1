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


A = [4 3 4;
	 3 4 5;
	 4 7 4];

[L,U] = LUrazcep(A);