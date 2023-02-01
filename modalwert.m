function y = modalwert(A)
U = unique(A);
H = histc(A,U);
y = U(H == max(H));
end
