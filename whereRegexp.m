function result = whereRegexp(c, pattern)
    res = logical(height(c));
    for i = 1:height(c)
        matches = logical(regexp(c(i,:), pattern));
        if isempty(matches)
            res(i)=false;
        else
            res(i) = matches(1);
        end
    end
    result = c(res, :);
end
