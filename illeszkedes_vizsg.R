illeszkedes_vizsg = function(k, p){
  if (length(k) != length(p)) {
    print('Samples not of same length!')
    return(NULL)
  }

  N = sum(k)
  khi2 = sum((k - N * p)^2 / (N * p))

  return(c(khi2))
};