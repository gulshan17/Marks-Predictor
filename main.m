clear;
clc;

%load data from the text file
data = load('data.txt');

%store the cases i.e. X values
X = data(:, [1 : 4]);
%store the output for the corresponding cases
y = data(:, 5);

%number of test cases
m = size(y, 1);

%tthis function maps the input features to quardratic features
X = mapFeature(X);

%function normalise the features for fast convergence
[mu, sigma, X] = featureNormalize(X);

%use to store the parameters
theta  = zeros(size(X, 2), 1);

%regularization parameter
lambda  = 10;

%function compute cost
cost = computeCost(theta, X, y, lambda);
fprintf('The initial cost is %f\n', cost);

%learning rate 
alpha = 0.1;

%gradient descent function to fit out parameters
theta = gradient_descent(theta, X, y, alpha, lambda, 50);

test = [5, 2, 6, 80]
test = mapFeature(test);

test([2 : end]) = test([2 : end]) - mu;
test([2 : end]) = test([2 : end]) ./ sigma;

fprintf('The percentage for the test case is %f\n', (test * theta));