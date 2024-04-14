// Composite trapezoidal Rule (p=0)

deff("y=f(x)","y=(1/(x^3 + 10));");

// For 3 points
x = [0 0.5 1];
y = [f(0) f(0.5) f(1)];
n = length(x);
h = x(2) - x(1);
I = y(1) + y(n);

for i=2:1:n-1
    I = I + 2*y(i);
end

I = (h/2) * I;
disp("The value of integral using trapezoidal rule for 3 points is ",I);


// For 5 points
x = [0 0.25 0.5 0.75 1];
y = [f(0) f(0.25) f(0.5) f(0.75) f(1)];
n = length(x);
h = x(2) - x(1);
I = y(1) + y(n);

for i=2:1:n-1
    I = I + 2*y(i);
end

I = (h/2) * I;
disp("The value of integral using trapezoidal rule for 5 points is ",I);


// For 9 points
x = [0 0.125 0.25 0.375 0.5 0.625 0.75 0.875 1];
y = [f(0) f(0.125) f(0.25) f(0.375) f(0.5) f(0.625) f(0.75) f(0.875) f(1)];
n = length(x);
h = x(2) - x(1);
I = y(1) + y(n);

for i=2:1:n-1
    I = I + 2*y(i);
end

I = (h/2) * I;
disp("The value of integral using trapezoidal rule for 9 points is ",I);

// Exact value
[V, err] = intg(0 , 1 , f);
disp("Exact value of integral: ",V);
