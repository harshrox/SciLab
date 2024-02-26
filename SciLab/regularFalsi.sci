deff('y=f(x)','y=x^x+2*x-6;');   // Defining function
a = 1;                          // Left point
b = 2;                          // Right point
tol = 1e-10;                     // Tolerence value(episilon)
max_iteration = 1000;            // Max iteration of root
FA = f(a);                       // Value of function at a
FB = f(b);                      // Value of function at b
h_n = (abs(FA)/(abs(FA)+abs(FB))) * (b-a);       // Value of h_n
x_nplus1 = a + h_n;                              // Value of x_n+1
i = 1;                          // Starting index

if(f(x_nplus1)==0)
    disp(['Root is: ' string(c)]);
else
    while(abs(f(x_nplus1))>tol & i<=max_iteration)
        if(f(x_nplus1)<0)
            a = x_nplus1;
        else
            b = x_nplus1;
        end
        
        FA = f(a);
        FB = f(b);
        h_n = (abs(FA)/(abs(FA)+abs(FB))) * (b-a);
        x_nplus1 = a + h_n;
        i = i+1;
    end
end

clc();
format(10); // number of decimal places to display
disp(['Root is: ' string(x_nplus1) ', found in ' string(i) ' steps.']);
disp(['The value of the function f(c) is: ' string(f(x_nplus1))]);

x=-2:0.001:4;
y=feval(x,f);
loc=gca();
loc.y_location = "origin";
loc.x_location = "origin";
plot(x,y);
title('');
