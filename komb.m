function anzahlKombination = komb(n,k)
%KOMB Die Anzahl der möglichen Kombinationen von k Elementen aus n Elementen
%   z.B. 40 Eissorten im becher mit 3 Kugeln
anzahlKombination = factorial(n)/(factorial(k)*factorial(n-k));
end

