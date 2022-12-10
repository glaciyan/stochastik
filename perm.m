function anzahlPermutationen = perm(n,k)
%KPERM P(n,k) Anzahl der k-Permutationen aus einer Menge mit n Elementen
%   z.B. Podestplätze
if n == k % P(n,n)
    anzahlPermutationen = factorial(n);
else
    anzahlPermutationen = factorial(n)/factorial(n-k);
end
end

