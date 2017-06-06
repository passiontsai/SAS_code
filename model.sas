/* DV list */
p_count
p_citation
p_count_lag_2	
p_cite_lag_2	
p_count_lag_3	
p_cite_lag_3	
p_count_comb_2	
p_cite_comb_2	
p_count_comb_3	
p_cite_comb_3	
new	
copy	
emerge	
new_lag_2	
copy_lag_2	
emerge_lag_2	
new_lag_3	
copy_lag_3	
emerge_lag_3	
new_comb_2	
copy_comb_2	
emerge_comb_2	
new_comb_3	
copy_comb_3	
emerge_comb_3


// Model 1   
control -> DV

proc countreg data = work.data groupid=gvkey;
	model DV = 
  C_current_ratio C_firm_size C_firm_size_log C_prior_count C_prior_citation C_prior_new C_prior_copy C_prior_emerge	 
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;


// Model 2-1
control + IV  -> DV

proc countreg data = work.data groupid=gvkey;
	model DV = 
  Abs_RD_Exp Abs_RD_Intensity k_div exp_ratio 
  C_current_ratio C_firm_size C_firm_size_log C_prior_count C_prior_citation C_prior_new C_prior_copy C_prior_emerge	 
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;

// Model 2-2 
control + IV + moderator variable -> DV

proc countreg data = work.data groupid=gvkey;
	model DV = 
  Dynamism_sale Munificence_sale Dynamism_operating Munificence_operating Dynamism_all Munificence_all	
  Abs_RD_Exp Abs_RD_Intensity k_div exp_ratio 
  C_current_ratio C_firm_size C_firm_size_log C_prior_count C_prior_citation C_prior_new C_prior_copy C_prior_emerge	 
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;



// Model 3 
control + IV + moderator variable + moderator effect -> DV 

proc countreg data = work.data groupid=gvkey;
 model DV = 
  AbsRDExpEnvDynSale AbsRDExpEnvMunSale AbsRDExpEnvDynOper AbsRDExpEnvMunOper AbsRDExpEnvDynSUM AbsRDExpEnvMunSUM	
  AbsRDIntEnvDynSale AbsRDIntEnvMunSale AbsRDIntEnvDynOper AbsRDIntEnvMunOper AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
  ExplorEnvDynSale ExplorEnvMunSale ExplorEnvDynOper ExplorEnvMunOper ExplorEnvDynSUM ExplorEnvMunSUM	
  kdivEnvDynSale kdivEnvMunSale kdivEnvDynOper kdivEnvMunOper kdivEnvDynSUM kdivEnvMunSUM
  Dynamism_sale Munificence_sale Dynamism_operating Munificence_operating Dynamism_all Munificence_all	
  Abs_RD_Exp Abs_RD_Intensity k_div exp_ratio 
  C_current_ratio C_firm_size C_firm_size_log C_prior_count C_prior_citation C_prior_new C_prior_copy C_prior_emerge	 
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;
