X = dlmread('TheData.txt');
Z = linkage(X);

figure();
cutoff = median([Z(end-3,3) Z(end-1,3)])
dendrogram(Z, 'ColorThreshold', cutoff);
title('Agglomerative Hierarchical ???Cluster Tree');

% T = cluster(Z, 'maxclust', 4);