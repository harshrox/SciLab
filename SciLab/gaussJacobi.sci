A = [ 7 , 2, -1; -1 , 9 , 2;1 , 5 , -11  ];
B = [17.20;18.90;28.05];
P = [0;0;0];
max_iterations = 1000;
tolerence = 0.000001;
n = length(B);
x = zeros(n , 1);

for j=1:max_iterations
    for i=1:n
        x(i) = (B(i)/A(i,i)) - (A(i,[1:i-1,i+1:n]) * P([1:i-1,i+1:n]))/A(i,i);
    end
    mprintf('Iteration no %d\n',j);
    disp(x);
    if abs(x-P)<tolerence
        break
    end
    P = x;
end


mprintf("Result-\n");
for i = 1:length(x)
    mprintf('%.3f\n', x(i));
end
