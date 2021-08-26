function toeplitz(vect,n)
	m = size(vect,1);
	T = zeros(m+n-1,n);
	for i in 1:n
		T[i:(i+m-1),i] = vect;
	end
	return T
end