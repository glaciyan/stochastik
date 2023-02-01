function y = stetig_erwartungswert(fun, xmin, xmax)
y = integral(@(x) x .* fun(x), xmin, xmax);
end

