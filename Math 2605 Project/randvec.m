function [ vects ] = randvec( num )
%b = randvec(100)
%b{1}
vects = {};
for i = 1:num
    vects(length(vects)+1) = {[2*rand(2,1)-1]};
end
return
end


