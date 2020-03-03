x_train = dlmread('training_data.txt');
y_train = dlmread('training_labels.txt');
x_test = dlmread('test_data.txt');
y_test = dlmread('test_labels.txt');

coeff = glmfit(x_train, y_train, 'binomial', 'link', 'logit');
pred = logisticClassifier(x_test, coeff);
conf_mat = confusionmat(pred, y_test);