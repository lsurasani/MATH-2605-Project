function [ L, U, error] = lu_fact( mat )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
s = size(mat);
n = s(1,1);
L = identity(mat);
U = mat;
for k=1:n
    L(k+1:n,k)=U(k+1:n,k)/U(k,k);
    for j=k+1:n
        U(j,:)=U(j,:)-L(j,k)*U(k,:);
    end
end
B = mult(L, U) - mat;
error = infinity(B);
return
end


