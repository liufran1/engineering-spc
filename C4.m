%C4 function for correction to sample standard deviation
function y = C4(n)
  y = sqrt(2/(n-1))*gamma(n/2)/gamma((n-1)/2);
endfunction
