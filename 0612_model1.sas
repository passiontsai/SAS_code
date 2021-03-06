
/*
Model1
Control > DV 
test in 5 DV(baisc) and range in all/ict/phar/chem
*/

proc countreg data = work.all_size_5 groupid=gvkey;
 model p_count = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model p_count = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model p_count = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model p_count = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_5 groupid=gvkey;
 model p_citation = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model p_citation = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model p_citation = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model p_citation = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_5 groupid=gvkey;
 model new = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_new 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model new = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_new	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model new = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_new	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model new = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_new	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_5 groupid=gvkey;
 model copy = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model copy = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model copy = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model copy = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_5 groupid=gvkey;
 model emerge = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model emerge = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model emerge = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model emerge = 
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;

