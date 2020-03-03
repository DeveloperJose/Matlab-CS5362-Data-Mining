options = optimset('Display', 'iter', 'MaxFunEvals', 60000, 'TolFun', 1.0e-15, 'MaxIter', 400);

X=[4,5];
[XX, fval] = fminunc(@objectiveFunction, X, options)
