X = dlmread('iris-data.txt');
Y = dlmread('iris-labels.txt');

Z = linkage(X);
[idx, c, SSD] = kmeans(X, 3);
RI_kmeans = RandIndex(Y, idx)

idx2 = cluster(Z, 'maxClust', 3);
RI_hcluster = RandIndex(Y, idx2)

% totalSSD = sum(SSD);
% avgSSD = mean(SSD);
% s = silhouette(X, idx);
% asc = mean(s);

