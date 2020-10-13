% e^x * sin(100*x)

f = @(x) exp(x) .* sin(100*x);

abscise = linspace(0,1,500);
ordinate = f(abscise);

figure(1);
plot(abscise,ordinate);

g = @(x) exp(x) .* cos(100*x);

figure(2);
ordinate3 = [abscise' f(abscise)' g(abscise)'];
plot3(ordinate3(:,1),ordinate3(:,2),ordinate3(:,3));

waitfor(2);
waitfor(1);