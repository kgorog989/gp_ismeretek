polyreg = function(X, Y){
  if (length(X) != length(Y)) {
    print('Samples not of same length!')
    return(NULL)
  }
  
  n = length(X)
  x = sum(X)
  x2 = sum(X^2)
  x3 = sum(X^3)
  x4 = sum(X^4)
  y = sum(Y)
  xy = sum(X * Y)
  x2y = sum(X^2 * Y)
  
  base_det = x4 * (x2 * n - x^2) - x3 * (x3 * n - x2 * x) + x2 * (x3 * x - x2^2)
  a0_det = x4 * (x2 * y - x * xy) - x3 * (x3 * y - x2 * xy) + x2y * (x3 * x - x2^2)
  a1_det = x4 * (xy * n - x * y) - x2y * (x3 * n - x2 * x) + x2 * (x3 * y - x2 * xy)
  a2_det = x2y * (x2 * n - x^2) - x3 * (xy * n - y * x) + x2 * (xy * x - y * x2)

  a0 = a0_det / base_det
  a1 = a1_det / base_det
  a2 = a2_det / base_det

  cat('y = ', a2, 'x^2 + ', a1, 'x + ', a0, '\n')
  
  return(c(a2, a1, a0))
};