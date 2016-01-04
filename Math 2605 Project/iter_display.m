function [] = iter_display( )
%UNTITLED19 Summary of this function goes here
%   Detailed explanation goes here
vlist = randvec(100);
gaussList = {};
jacList = {};
jacIter = zeros(1,100);
gaussIter= zeros(1,100);
gaussSum = [0;0;0];
jacSum = [0;0;0];
gaussSumIter = 0;
jacSumIter = 0;
errorListGauss = zeros(1,100);
errorListJac = zeros(1,100);
xExact = [9/190;28/475;33/475];

for i = 1:100
    vec = vlist{i};
    fprintf('X0 = \n');
    disp(vec);
    [gaussList{i}, gaussIter(i)] = gs_iter(vec, 0.0005,100);
    [jacList{i}, jacIter(i)] = jacobi_iter(vec, 0.0005,100);
    fprintf('Xn for Gauss-Siedl = \n');
    disp(gaussList{i});
    fprintf('Number of iterations for Gauss-Siedl = %f\n\n',gaussIter(i));
    fprintf('Xn for Jacobi = \n');
    disp(jacList{i});
    fprintf('Number of iterations for Jacobi = %f\n\n', jacIter(i));
    errorListGauss(i) = infinity(gaussList{i} - xExact);
    errorListJac(i) = infinity(jacList{i} - xExact);
    gaussSum = gaussList{i} + gaussSum;
    jacSum = jacList{i} + jacSum;
    gaussSumIter = gaussIter(i) + gaussSumIter;
    jacSumIter = jacIter(i) + jacSumIter;
end
gaussAverage = gaussSum/100;
jacAverage = jacSum/100;
errorGauss = infinity(gaussAverage - xExact)
errorJac = infinity(jacAverage - xExact)
ratio = jacSumIter/gaussSumIter
    
scatter(errorListGauss,gaussIter,100,'blue')
hold on;
scatter(errorListJac,jacIter,100,'black')

end