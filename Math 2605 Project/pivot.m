function [ P ] = pivot( mat )
s = size(mat);
n = s(1,1);
P = identity(mat);
for j = 1:n
    if (mat(j,j) == 0)
        for row = j+1:n %Find nonzero below row within column
            if(mat(row,j) ~= 0)
                r = mat(row,:);
                Lr = P(row,:);
                mat(row,:) = mat(j,:);
                P(row,:) = P(j,:);
                mat(j,:) = r;
                P(j,:) = Lr;
            end
        end
    end
end
return
end

