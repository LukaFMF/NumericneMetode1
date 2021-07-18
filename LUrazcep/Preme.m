1;

function y = premaSub(L,b)

	n = length(b);
	y = zeros(n,1);

	for i=1:n
		y(i) = b(i) - L(i,1:i-1)*y(1:i-1);
	end
end

L = [1 0 0;
	 3 1 0;
	 2 4 1];
a = [1,2,3];
premaSub(L,a)
