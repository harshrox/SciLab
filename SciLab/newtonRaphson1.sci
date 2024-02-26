deff('y=f(x)','y=2*exp(-x)-1/(x+2)-1/(x+1);');     // Defining the function
deff('y=h(x)','y=-2*exp(-x) + 1/(x+1)^2 + 1/(x+2)^2;');
a = 0;                             // Left point
b = 2;                             // Right point
tol = 1e-10;                       // Tolerence value(episilon)
c = (a+b)/2;

while(abs(f(c))>tol)  
    c=(c-(f(c)/h(c)));  // Newton Raphson Formula
end;

clc();
mprintf('Root : %.4f\n',c);


// Plotting graph for the function
x = 0:0.001:4;
y = feval(x,f);
location = gca();
location.y_location = "origin";
location.x_location = "origin";
plot(x,y);
title('');
