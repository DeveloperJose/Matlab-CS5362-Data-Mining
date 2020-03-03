function [RI] = RandIndex(Y,idx)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

TP = 0;
TN = 0;
FP = 0;
FN = 0;

for n = 1 : length(idx)
    for m = 2 : length(idx)
        if (idx(n) == idx(m)) && (Y(n) == Y(m))
           TP = TP + 1;
        elseif (idx(n) ~= idx(m)) && (Y(n) ~= Y(m))
           TN = TN + 1;
        elseif (idx(n) == idx(m)) && (Y(n) ~= Y(m))
            FP = FP + 1;
        elseif (idx(n) ~= idx(m)) && (Y(n) == Y(m))
            FN = FN + 1;
        end
    end
end

RI = (TP + TN) / (TP + TN + FP + FN)

end

