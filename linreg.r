linreg = function(X, Y){
  if (length(X) != length(Y)) {
    print('Samples not of same length!')
    return(NULL)
  }
  
  n = length(X)
  x = sum(X)
  y = sum(Y)
  x2 = sum(X^2)
  xy = sum(X * Y)
  
  base_det = n * x2 - x^2
  a = (n * xy - x * y) / base_det
  b = (x2 * y - x * xy) / base_det
  
  cat('y = ', a, 'x + ', b, '\n')
  
  return(c(a, b))
};