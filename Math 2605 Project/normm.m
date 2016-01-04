function [ y ] = normm( v )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    x = abs(v);
    n = size(x , 1);
    w = v.^2;
    y = 0;
    for j = 1 : n
        y = y + w(j);
    end
    y = y^.5;
end

