

/*model_1*/
proc countreg data = work.all_size_3 groupid=gvkey;
 model p_count = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model p_citation = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model new = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_new 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model copy = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model emerge = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;



/*model_2*/

proc countreg data = work.all_size_3 groupid=gvkey;
 model p_count = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model p_citation = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model new = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_new 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model copy = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model emerge = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;




/*model_3*/

proc countreg data = work.all_size_3 groupid=gvkey;
 model p_count = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
 AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
kdivEnvDynSUM kdivEnvMunSUM
ExplorEnvDynSUM ExplorEnvMunSUM
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model p_citation = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
 AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
kdivEnvDynSUM kdivEnvMunSUM
ExplorEnvDynSUM ExplorEnvMunSUM
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model new = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
 AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
kdivEnvDynSUM kdivEnvMunSUM
ExplorEnvDynSUM ExplorEnvMunSUM
  C_current_ratio C_firm_age C_firm_size_log C_prior_new
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_3 groupid=gvkey;
 model copy = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
 AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
kdivEnvDynSUM kdivEnvMunSUM
ExplorEnvDynSUM ExplorEnvMunSUM
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;


proc countreg data = work.all_size_3 groupid=gvkey;
 model emerge = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
 AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
kdivEnvDynSUM kdivEnvMunSUM
ExplorEnvDynSUM ExplorEnvMunSUM
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

