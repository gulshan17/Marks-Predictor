function [mu, sigma, X] = featureNormalize(X)

    mu = mean(X(:, [2 : end]));
    sigma = std(X(:, [2 : end]));

    X(:, [2 : end]) = X(:, [2 : end]) - mu;
    X(:, [2 : end]) = X(:, [2 : end]) ./ sigma;

end