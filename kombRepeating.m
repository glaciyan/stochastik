function out = kombRepeating(n,k)
%KOMPREPEATING Summary of this function goes here
%   Detailed explanation goes here
out = factorial(n+k-1)/(factorial(k)*factorial(n-1));
end

