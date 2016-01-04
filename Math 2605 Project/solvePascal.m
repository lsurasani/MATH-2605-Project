function [  ] = solvePascal(  )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
    b = eye(1,1);
    for n = 2 : 12 
        %P = pascal(n);
        a = 1 : n;
        j = mult(ones(n, 1), a);
        i = j';
        P = factorial(i + j - 2)./(factorial(i - 1).*factorial(j - 1));
        b(n) = 1/n;
        
        [x1, x2] = solve_qr_b(P, b');
        [Q, R, errorGivens] = qr_fact_givens(P);
        [Q, R, errorHouse] = qr_fact_househ(P);
        [L, U, errorLU] = lu_fact(P);
        fprintf('n = %f\n', n);
        fprintf('xsol \n');
        disp(x1);
        fprintf('error Givens');
        disp(errorGivens);
        fprintf('error House');
        disp(errorHouse);
        fprintf('error LU');
        disp(errorLU);
        
        B = mult(P, x1) - b';
        
        fprintf('Pxsol - b');
        disp(infinity(B));
    end
end

