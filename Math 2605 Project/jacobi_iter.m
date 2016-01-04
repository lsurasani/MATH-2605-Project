function [solution, iterations] = jacobi_iter(x0, tolerance, max)
    A = [1, 1/2, 1/3; 1/2, 1, 1/4; 1/3, 1/4, 1];
    b = [0.1; 0.1; 0.1];
    lower = [0, 0,0; 1/2, 0, 0; 1/3,1/4,0];
    upper = [0, 1/2, 1/3; 0, 0, 1/4; 0, 0,0]; 
    diagonal = identity(A);
    current = x0;
    previous = [];
    difference = 10000;
    count = 0;
    invDiagonal = diagonal;
    while (difference >= tolerance) && (count < max)
        previous = current;
        current = mult(invDiagonal,-1*(lower + upper)*previous + b);
        difference = infinity(current - previous);
        count = count + 1;
    end    
    solution = current;
    iterations = count;
    if(difference > tolerance)
        solution = NaN;
        fprintf('MAX OUT');
    end
return
end
    