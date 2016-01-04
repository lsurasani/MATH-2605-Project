function [x] = deter(A)
    s = length(A);
    if s == 2;
        x = A(1,1)*A(2,2) - A(2,1)*A(1,2);
    end
return    
end

    