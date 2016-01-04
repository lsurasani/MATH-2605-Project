function [  ] = pascal_display(  )
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
    for n = 1 : 12
        x(n) = n;
    end
    x = x';
    %disp(x);
    b = eye(1,1);
    for n = 2 : 12
        P = pascal(n);
        b(n) = 1/n;
        [Q, R, errorGivens] = qr_fact_givens(P);
        [Q, R, errorHouse] = qr_fact_househ(P);
        [L, U, errorLU] = lu_fact(P);
        givens(n) = errorGivens;
        house(n) = errorHouse;
        LU(n) = errorLU;
        %disp(givens);
        %disp(house);
    end
    
    
    
    scatter(x, givens);
    title('Givens error');
    figure; 
    
    scatter(x, house);
    title('House error');
    figure;
    
    scatter(x, LU);
    title('LU error');
end

