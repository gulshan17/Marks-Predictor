%this function optimizes the parameters i.e. theta

function theta = gradient_descent(theta, X, y, alpha, lambda, no_iterations)

    m = size(y, 1);
    grad = zeros(size(X, 2), 1);
    cost = zeros(no_iterations, 1);

    for i = 1 : no_iterations
        s = (X * theta) - y;
        grad(1) = (s' * X(:, 1)) / m;
        grad([2 : end]) = (((X(:, [2 : end]))' * s) + (lambda * (theta([2 : end])))) / m;
        theta = theta - (alpha * grad);
        [cost(i), ] = computeCost(theta, X, y, lambda);
    end

    plot([1 : 50], cost);
    xlabel('iteration');
    ylabel('Cost');

end