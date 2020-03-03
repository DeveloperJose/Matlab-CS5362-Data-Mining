function [fVal] = objectiveFunction(X)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    % fVal = 1.0 + (X * X);
    fVal = ((X(1) + 2 * X(2) - 7)^2) + (2 * X(1) + X(2) - 5)^2;
end

