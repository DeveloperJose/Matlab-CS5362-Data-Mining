x_train = dlmread('trainingData.txt');
y_train = dlmread('trainingLabels.txt');

coeff = glmfit(x_train, y_train, 'binomial', 'link', 'logit');

x_test = dlmread('TestData.txt');
y_test = dlmread('TestLabels.txt');

pred = logisticClassifier(x_test, coeff);
conf_mat = confusionmat(pred, y_test);