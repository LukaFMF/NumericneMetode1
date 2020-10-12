0;
function [vsota,vecDelnih] = Vsota(_x)
	if iscolumn(_x)
		_x = _x'
	end

	vsota = sum(_x);

	xSize = size(_x)(2);
	vecDelnih = zeros(1,xSize);
	for i = 1:xSize
		vecDelnih(i) = sum(_x(1:i));
	endfor
endfunction

vecX = input("Vnesi vektor x: ");

[vst,delne] = Vsota(vecX);
vst
delne