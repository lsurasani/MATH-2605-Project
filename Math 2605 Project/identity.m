function [id] = identity(A)
    s = length(A);
    id = zeros(s);
    for y = 1:s
        for z = 1:s
            if y == z
                id(y,z) = 1;
            end
        end
    end
return
end
        