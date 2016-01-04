function [ eval, evec, i] = power_method( mat, guess, N, tol )
% Takes in the matrix, initial vector guess, max number of iterations,
% error of tolerance
% Outputs eigenvalue, eigenvector, number of iterations to tolerant error
% If unable to achieve tolerance, eigenvalue and eigenvector will equal NaN

s = size(mat);
n = s(1);
scale = 0;
val = 0;
i = 0;
error = 1000;
eval = 0;
evec = 0;
prevval = 0;
[v1, v2] = (eigenvalue(mat));
% if(abs(v1)>abs(v2))
%     val = v1;
% else 
%     val = v2;
% end

while ((i < N) && (error > tol)) 
    if(i==0)
        scale = guess(1);
    else
        scale = Ax(1);
    end
    Ax = mat*guess;
    guess = Ax;
    evec = (Ax / scale);
    eval = evec(1);
    evec = evec/(evec(n));
    mag = ((evec(1))^2+(evec(2))^2)^.5;
    evec = evec/mag;
    error = abs(prevval - eval);
    prevval = eval;
    i = i+1;
end

if(error > tol)
    eval = NaN;
    evec = NaN;
end
return
end