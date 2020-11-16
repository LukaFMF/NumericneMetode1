b = 45;
fib = [1 1];

for i = 3:30
	fib = [fib fib(end - 1) + fib(end)];
end

prviNad1000 = fib(fib > 1000)(1)
izraz = 1000/(fib(30) + b)