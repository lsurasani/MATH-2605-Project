function [vector1] = eigenvect(V, A)
    newMatrix = A - V*identity(A);
    vector1 = null(newMatrix);
return
end
    