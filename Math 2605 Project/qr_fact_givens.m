function [ Q, R, error] = qr_fact_givens( A )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    n = size(A, 1);
    Q = eye(n);
    R = A;
    for j = 1 : n
        for i = n : (-1) : j + 1
            x = R(: , j);
            x1 = x(i-1 : i,1);
            if normm(x1) > 0
                c = x(i-1) / normm(x1);
                s = -x(i) / normm(x1);
                
                G = eye(n);
                G([i-1, i], [i-1, i]) = [c s; -s c];
                R = mult(G', R);
                Q = mult(Q, G);
            end
        end
    end
    B = mult(Q, R) - A;
    error = infinity(B);
    
end

