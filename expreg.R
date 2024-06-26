expreg = function(X, Y) {
  if (length(X) != length(Y)) {
    print('Samples not of same length!')
    return(NULL)
  }
  
  n = length(X)
  x = sum(X)
  y = sum(log(Y))
  x2 = sum(X^2)
  xy = sum(X * log(Y))
  
  base_det = n * x2 - x^2
  b = (n * xy - x * y) / base_det

  # calculating a
  # 1-1 x and y is needed only
  y = log(Y[1])
  x = X[1]
  a = exp((y - b * x))
  
  cat('y = ', a, '* exp(', b, '* x)\n')
  
  return(c(a, b))
}