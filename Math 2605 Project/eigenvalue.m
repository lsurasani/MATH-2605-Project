function[lambda1 lambda2] = eigenvalue(A)
    t = trace(A);
    lambda1 = (t - sqrt(t.^2 - 4*deter(A)))/2;
    lambda2 = (t + sqrt(t.^2 - 4*deter(A)))/2;
return
end
    