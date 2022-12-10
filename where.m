function result = where(c, fn)
    res = logical(height(c));
    for i = 1:height(c)
        out = fn(c(i,:));
        if all(size(out) == 1) % out is single value
            res(i) = out == true;
        else
            res(i) = all(out) == true;
        end
    end
    result = c(res, :);
end
