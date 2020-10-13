x1 = linspace(1,3,500);
f = @(x) sin(x).*exp(sqrt(x));

figure(1);
plot(x1,f(x1));

t1 = linspace(0,2*pi,500);
ordinate3 = [t1' sin(t1)' cos(t1)'];

figure(2);
plot3(ordinate3(:,1),ordinate3(:,2),ordinate3(:,3));

[x2,y2] = meshgrid(linspace(0,1,50),linspace(0,1,50));
h = @(x,y) (x.^2 + y.^2)./(1 + x + y);

figure(3);
mesh(x2,y2,h(x2,y2));

waitfor(3);
waitfor(2);
waitfor(1);