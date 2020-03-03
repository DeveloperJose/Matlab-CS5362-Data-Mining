% From column to row
% YFAM
A = [1,0,1,0; 
     1,1,0,1;
     1,0,0,0;
     0,0,1,0
    ];
    
% Create importance distribution matrix B from A
[Rank, Iter] = PageRank(A, 0.00001)

% AdjMatrix = A;
% FC = ones(size(AdjMatrix)) / size(AdjMatrix,1);
% B = 1;
% I = (B * I) + ((1-B) * FC);
