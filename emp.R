emp = function(X, atl){
	s = 0
	n = length(X)
	for(i in 1:n){
		s = s + (X[i] - atl)^2
	}
	emp = s / (n - 1)
};