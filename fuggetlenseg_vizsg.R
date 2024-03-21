fuggetlenseg_vizsg = function(A){
  dim = dim(A)
  N = sum(A)

  khi2 = 0
  for(i in 1:dim[1]){
    for(j in 1:dim[2]){
      khi2 = khi2 + ((A[i, j] - ((sum(A[i,]) * sum(A[,j])) / N))^2) / ((sum(A[i,]) * sum(A[,j])) / N)
    }
  }

  return(c(khi2))
};