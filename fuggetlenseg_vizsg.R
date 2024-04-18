fuggetlenseg_vizsg = function(A){
  dim = dim(A)
  N = sum(A)

  khi2 = 0
  for(i in 1:dim[1]){
    for(j in 1:dim[2]){
	value = (sum(A[i,]) * sum(A[,j])) / N
      khi2 = khi2 + ((A[i, j] - value)^2) / value
    }
  }

  return(c(khi2))
};