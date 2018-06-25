%this function compute the cost of hypothesis function to check it's accuracy

function cost = computeCost(theta, X, y, lambda)

    m = size(y, 1);
    cost = ((((X * theta) - y)' * ((X * theta) - y)) + (lambda * theta([2 : end])' * theta([2 : end]))) / 2 / m;

end