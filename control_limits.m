% control limits
function control_limits(grand_average, average_std, sample_size)
  centerline_x = grand_average 
  centerline_s = average_std
  x_correction = 3*centerline_s/(sqrt(sample_size)*C4(sample_size));
  s_correction = 3*centerline_s/C4(sample_size)*sqrt(1-C4(sample_size)^2);
  ucl_x = centerline_x + x_correction
  lcl_x = centerline_x - x_correction

  ucl_s = centerline_s + s_correction
  lcl_s = centerline_s - s_correction
endfunction
