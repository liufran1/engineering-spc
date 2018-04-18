% expected quality loss
function y = expected_quality_loss(true_variance,true_mean,target_mean,k)
  y = k*true_variance + k*(true_mean - target_mean)^2;
endfunction