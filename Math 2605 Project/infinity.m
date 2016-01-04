%Finding Infinity norm of a matrix
%The maximum absolute row sum
%We sum absolute values along each row and take biggest answer

function out = in(matrix)
matrix = abs(matrix); %makes everything positive
[r,c] = size(matrix);%find number of rows
vector = [];
for k = 1:r%iterate through rows
    summation = sum(matrix(k,:));%sum of current row
    vector = [vector,summation]; %vector of sums
end

out = max(vector);%sum
    
end