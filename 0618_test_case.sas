 proc countreg data = work.all_size_5_new groupid = gvkey;
 class SIC datayear;
 model pair_copy_super  =  Ab_RD_Intensity k_div exp_ratio Dynamism_sum Munificence_sum
  C_current_ratio C_firm_age C_firm_size_log
/ dist=negbin(p=2) ERRORCOMP= RANDOM;
run; 

