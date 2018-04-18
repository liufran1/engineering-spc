%compute power of a mean shift under expectation of identical variance normal distributions
function  y = meanshift_beta(null_hyp,true_mean,std_dev,sample_size, alpha_level)
  z_stat = norminv(alpha_level/2);
  norm_diff = (true_mean-null_hyp)/(std_dev/sqrt(sample_size));
  y = normcdf(-z_stat-norm_diff,0,1)+normcdf(z_stat-norm_diff,0,1);
endfunction