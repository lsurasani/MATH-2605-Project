function [inverseA] = inverse(A)
    scal = 1/(deter(A));
    a = A(1,1);
    d = A(2,2);
    A(1,1) = d;
    A(2,2) = a;
    A(1,2) = -1*A(1,2);
    A(2,1) = -1*A(2,1);
    inverseA = scal*A;
return
end