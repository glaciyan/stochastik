function result = whereContains(c, search)
result = where(c, @(x) hasAnywhere(x, search));
end
