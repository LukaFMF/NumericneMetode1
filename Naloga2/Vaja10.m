x1 = linspace(1,3,100);
plot(x1,sin(x1).*exp(sqrt(x1)))

t1 = linspace(0,2*pi,100);
plot(t1,[sin(t1); cos(t1)])

[x2,y2] = meshgrid(linspace(0,1,50),linspace(0,1,50));
mesh(x2,y2,(x2.^2 + y2.^2)./(1 + x2 + y2))