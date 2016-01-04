function [solution, iterations] = gs_iter(x0, tolerance, max)
    A = [1, 1/2, 1/3; 1/2, 1, 1/4; 1/3, 1/4, 1];
    b = [0.1; 0.1; 0.1];
    lower = [0, 0,0; 1/2, 0, 0; 1/3,1/4,0];
    upper = [0, 1/2, 1/3; 0, 0, 1/4; 0, 0,0]; 
    lower_diagonal = [1,0,0;-1/2,1,0;(-1/3+1/8),-1/4,1];
    current = x0;
    previous = [];
    difference = 10000;
    count = 0;
    while (difference >= tolerance) && (count < max)
        previous = current;
        current = mult(lower_diagonal,-1*(upper)*previous + b);
        difference = infinity(current - previous);
        count = count + 1;
    end    
    solution = current;
    iterations = count;
    if(difference > tolerance)
        solution = NaN;
    end
return
end