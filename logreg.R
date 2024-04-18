logreg = function(X, Y) {

  #this is the reimplementation of the exp_reg function
  #in this version, i incorporated the lin_reg function to get a and b enentually

  if (length(X) != length(Y)) {
    print('Samples not of same length!')
    return(NULL)
  }
  
  lnY = log(Y)

  source("C:\\Users\\Admin\\Documents\\Gazdasági és pénzügyi modellek\\gp_ismeretek\\linreg.r")
  results = linreg(X, lnY)

  b = results[1]
  c = results[2]

  a = exp(c)

  
  cat('y = ', a, '* exp(', b, '* x)\n')
  
  return(c(a, b))
};