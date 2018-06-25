function out = mapFeature(X)

out = [ones(size(X(:, 1))) X];
counter = size(X, 2);

for i = 2 : counter
    for j = i : counter
        out(:, end + 1) = X(:, i) .* X(:, j);
    end
end

end