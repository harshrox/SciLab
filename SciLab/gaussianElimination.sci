A = [2.1756 , 4.0231 , -2.1732 , 5.1967; -4.0231 , 6, 0 , 1.1973; -1 , -5.2107 , 1.1111 , 0; 6.0235 , 7 , 0 , -4.1561];
B = [17.102;-6.1593;3.0004;0];
[p , q] = size(A);
n = length(B);


if p==q then
    A = [A B];
    disp(A);        // Displaying augmented matrix
    threshold = 1e-10;
    for j=1:n-1
        for i=j+1:n
            m = A(i,j)/A(j,j);
            A(i, :) = A(i, :) - m * A(j, :);
            A(abs(A) < threshold) = 0;        // To put 0 to all the values which are less than threshold
        end
    end
    
    disp(A);
    
    // Finding solution using backward substitution
    x = zeros(1,n);      // One row with n columns
    disp("Solutions are:");
    for i=n:-1:1
        ax = sum(A(i , 1:n).*x);
        x(i) = (A(i , n+1)-ax)/A(i , i);
    end

    disp(x);
else
    disp("Gaussian elimination fails");

end



