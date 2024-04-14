// Euler method

clear
function dy = f(x,y)
    dy = ((1+y^2)/((y+sqrt(1+y^2))*(1+x)^(3/2)));
endfunction

x0 = 1;
y0 = 0;

xf = 2;
h = 0.2;

x(1) = x0;
y(1) = y0;
n = (xf - x0)/h;

for i=1:n
    x(i+1) = x(i) + h;
    y(i+1) = y(i) + h*f(x(i),y(i));
end


mprintf("\nSolution using Euler Method: %.6f\n",y(n+1));

