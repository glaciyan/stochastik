function result = whereString(c, search)
    res = logical(height(c));
    for i = 1:height(c)
        res(i) = contains(c(i,:), search);
    end
    result = c(res, :);
end
