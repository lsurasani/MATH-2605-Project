function [y] = trace(A)
    s = length(A);
    if s == 2
        y = A(1,1) + A(2,2);
    end
return
end