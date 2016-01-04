function [ x ] = solve_lu_b( A, b )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    [L, U, errorLU] = lu_fact(A);
    n = size(A, 1);
    sum1 = 0;
    y = zeros(size(b,1),1);
    for i = 1:n
        sum1 = 0;
        for k = 1:i
            sum1 = sum1 + L(i,k)*y(k,1);
        end
        y(i) = (b(i)-sum1)/L(i,i);
    end
    sum2 = 0;
    x = zeros(size(b,1),1);
    for i = n:-1:1
        sum2 = 0;
        for k = n:-1:1
            sum2 = sum2 + U(i,k)*x(k,1);
        end
        x(i) = (y(i) - sum2)/L(i,i);
    end

end

