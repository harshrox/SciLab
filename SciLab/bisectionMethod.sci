deff('y=f(x)','y=x^x+2*x-6;');     // Defining the function
a = 1;                             // Left point
b = 2;                             // Right point
tol = 1e-10;                       // Tolerence value(episilon)
max_iteration = 1000;              // Max iteration of loop
c = (a+b)/2;                       // Mid-point
i = 1;                             // Starting index

if(f(c)==0) then
    disp(['Root is: ' string(c)]);
else
    while(abs(f(c))>tol & i<=max_iteration)
        if(sign(f(c)) == sign(f(a)))
            a = c;
        else
            b = c;
        end
        
        c = (a+b)/2;
        i = i+1;
    end
end

clc();
format(10);                        // Number of decimal places to display
disp(['Root is : ' string(c) ',found in ' string(i) 'steps.']);
disp(['The value of the function f(c) is: ' string(f(c))]);

// Plotting graph for the function
x = -2:0.001:4;
y = feval(x,f);
location = gca();
location.y_location = "origin";
location.x_location = "origin";
plot(x,y);
title('');
