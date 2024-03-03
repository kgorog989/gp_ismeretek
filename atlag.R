atlag = function(X) {
	s = 0
	n = length(X)
	for (i in 1:n){
		s = s + X[i]
	}
	atlag = s / n
};