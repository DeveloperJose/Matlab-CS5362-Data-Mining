function [R, Iters] = PageRank(AdjMatrix, Threshold)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

% Importance distribution matrix
I = AdjMatrix;
colSums = sum(AdjMatrix,1);
for i = 1 : length(colSums)
   I(:,i) = I(:,i) / colSums(i);
end

% Fully connected 
FC = ones(size(AdjMatrix)) / size(AdjMatrix,1);
B = 0.8;
I = (B * I) + ((1-B) * FC);

% Power Iteration
R = ones(size(I,1), 1) / size(I,1);
Iters = 0;
while 1
   Iters = Iters + 1;
   RU = (I * R);
   if sum(abs(R - RU)) < Threshold
       R = RU;
       break
   end
   R = RU;
end

end

