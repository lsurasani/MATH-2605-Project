%%Matrix Multiplier Function
%Input1  of Y by N matrix  - Input 2 of N by Z
%output is  Y by Z matrix

function arr = mult(fm,sm)
[r1, c1] = size(fm);
[r2, c2] = size(sm);

if ~isequal(c1,r2)
   
    fprintf('Inner matrix dimensions must agree');
    arr = [];
end

if isequal(c1,r2)
    %fprintf('Good, you chose the right dimensions this time');
    arr = zeros(r1,c2);
    for k = 1:c2
        for j = 1:r1
            row = fm(j,:);
            col = sm(:,k);
            indx = 0;
            while length(row)>=1
               indxadd = row(1,1) * col(1,1);
               indx = indx + indxadd;
               row(1) = [];
               col(1) = [];
            end
            arr(j,k) = indx;
        end     
    end
end



end