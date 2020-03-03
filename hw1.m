X = dlmread('HW1Data.txt');
Y = dlmread('expectedClusters.txt');

% K-Means Stuff
[idx, c, SSD] = kmeans(X, 3);
RI_kmeans = RandIndex(Y, idx)
avgSSD = mean(SSD)
s = silhouette(X, idx);
asc = mean(s)

% Hierarchical Stuff
Z = linkage(X);
idx2 = cluster(Z, 'maxClust', 3);
RI_hcluster = RandIndex(Y, idx2)
