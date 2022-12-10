function hasIt = hasAnywhere(c,search)
    hasIt = sum(ismember(search, c)) == length(search);
end

