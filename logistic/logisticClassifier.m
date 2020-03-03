function [pred] = logisticClassifier(testData,coeff)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    pred = 1:size(testData,1);
    for n = 1 : size(testData, 1)
        rowData = testData(n,:);
        p = computeProb(rowData, coeff);
        if (p > 0.5)
            pred(n) = 1;
        else
            pred(n) = 0;
        end
    end
end

function [prob] = computeProb(rowData, coeff)
    y = coeff(1);
    for j=1:length(rowData)    
        y = y + rowData(j) * coeff(j+1);
    end
    prob = 1 / (1 + exp(-1 * y));
end