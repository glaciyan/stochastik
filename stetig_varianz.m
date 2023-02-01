function [var, E] = stetig_varianz(fun, xmin, xmax)
E = stetig_erwartungswert(fun, xmin, xmax);
var = integral(@(x) (x-E).^2 .* fun(x), xmin, xmax);
end

