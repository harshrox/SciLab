// Runge Kutta method of 2nd order

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
    k1 = h*f(x(i),y(i));
    k2 = h*f(x(i)+h,y(i)+k1);
    y(i+1) = y(i)+(k1+k2)/2;
end


mprintf("\nSolution using Runge Kutta Method of 2nd order: %.6f\n",y(n+1));

