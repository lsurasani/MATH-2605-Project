function [ mats ] = randmat(num)
%b = randmat(1000)
%b{1}
mats = {};
for i = 1:num
    mats(length(mats)+1) = {[4*rand(2,2)-2]};
end
return
end
