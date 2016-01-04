function [ x1, x2  ] = solve_qr_b( A, b )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    [Q1, R1, error] = qr_fact_househ(A);
    [Q2, R2, error] = qr_fact_givens(A);
    
    d1 = Q1' * b;
    d2 = Q2' * b;
    n1 = size(d1, 1);
    n2 = size(d2, 1);
    x1=zeros(n1, 1);
    x2=zeros(n2, 1);
    for j= n1 : -1 : 1
        x1(j)=d1(j) / R1(j, j);
        d1(1 : j-1)= d1(1 : j-1) - R1(1 : j-1, j) * x1(j);
        
        x2(j)=d2(j) / R2(j, j);
        d2(1 : j-1)=d2(1 : j-1) - R2(1 : j-1, j) * x2(j);
    end

end

