// Modified Euler method
clear
function dy = f(x, y)
    dy = (1 + y^2) / ((y + sqrt(1 + y^2)) * (1 + x)^1.5);
endfunction

x0 = 1;
y0 = 0;
xf = 2;
h = 0.2;

x(1) = x0;
y(1) = y0;
n = (xf - x0) / h;

for i = 1:n
    x(i + 1) = x(i) + h;
    
    yp = y(i) + h * f(x(i), y(i));
    
    while 1
        y_temp = y(i) + h * 0.5 * (f(x(i), y(i)) + f(x(i + 1), yp));
        if abs(y_temp - yp) < 0.0000001
            break;
        end
        yp = y_temp;
    end
    
    y(i + 1) = y_temp;
end

mprintf("\nSolution using Modified Euler Method: %.6f\n",y(n+1));
