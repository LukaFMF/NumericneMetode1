0;
function n = minEksp(_x,_y)
	n = ceil(log(_y)/log(_x));
endfunction

x = input("Vnesi x: ");
y = input("Vnesi y: ");
minEksp(x,y)