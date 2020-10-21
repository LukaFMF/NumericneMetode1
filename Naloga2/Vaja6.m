0;
function A = MatrikaA(_vecX,_vecY)
	_vecY += _vecY == 0;
	if isrow(_vecX)
		_vecX = _vecX';
	end
	if iscolumn(_vecY)
		_vecY = _vecY';
	end
	xSize = size(_vecX)(1);
	ySize = size(_vecY)(2);
	
	A = repmat(_vecX,1,ySize);
	for i = 1:xSize
		A(i,:) = A(i,:)./_vecY; 
	endfor
endfunction

function A = MatrikaA1(_vecX,_vecY)
	[I,J] = ndgrid(_vecX,_vecY);
	A = I ./ J;
endfunction

vecX = input("Vnesi vektor x: ");
vecY = input("Vnesi vektor y: ");

MatrikaA(vecX,vecY)
MatrikaA1(vecX,vecY)