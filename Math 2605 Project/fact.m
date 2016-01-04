function [ answer ] = fact( num )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if(num == 0) 
    answer = 1;
    return
end
answer = num * fact(num-1);
return
end

