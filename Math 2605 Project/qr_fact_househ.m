function [Q, R, error] = qr_fact_househ(A)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[m, n] = size(A);
R = A;
Q = eye(m);
for j=1 : n
    x = zeros(m, 1);
    x(j : m, 1) = R(j : m, j);
    g = normm(x);
    v = x;
    v(j) = x(j) + g;
    s = normm(v);
    
    if s~=0 
        w = v / s;
        u = 2 * R' * w;
        R = R - w * u';
        Q = Q - 2 * mult(Q, (w*w');
    end
    B = (mult(Q, R)) - A;
    error = infinity(B);
end

