/*
Model 2
IV + Moderate_IV + Control > DV 
test in 5 DV(baisc) and range in all/ict/phar/chem
*/

/*
Abs_RD_Exp Abs_RD_Intensity k_div exp_ratio
Dynamism_sale Dynamism_operating Dynamism_all Munificence_sale Munificence_operating Munificence_all	 
*/   
  
proc countreg data = work.all_size_5 groupid=gvkey;
 model p_count = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.all_size_5 groupid=gvkey;
 model p_count = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model p_count = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model p_count = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model p_count = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model p_count = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model p_count = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model p_count = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_count	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;


proc countreg data = work.all_size_5 groupid=gvkey;
 model p_citation = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.all_size_5 groupid=gvkey;
 model p_citation = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model p_citation = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model p_citation = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model p_citation = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model p_citation = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model p_citation = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model p_citation = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;


proc countreg data = work.all_size_5 groupid=gvkey;
 model new = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_new 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.all_size_5 groupid=gvkey;
 model new = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_new 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model new = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_new	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model new = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_new	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model new = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_new	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model new = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_new	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model new = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_new	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model new = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_new	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;



proc countreg data = work.all_size_5 groupid=gvkey;
 model copy = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.all_size_5 groupid=gvkey;
 model copy = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model copy = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model copy = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model copy = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model copy = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model copy = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model copy = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;


proc countreg data = work.all_size_5 groupid=gvkey;
 model emerge = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.all_size_5 groupid=gvkey;
 model emerge = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model emerge = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.ict_size_5 groupid=gvkey;
 model emerge = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model emerge = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.phar_size_5 groupid=gvkey;
 model emerge = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model emerge = Abs_RD_Intensity k_div exp_ratio Dynamism_sale Dynamism_operating Munificence_sale Munificence_operating
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
proc countreg data = work.chem_size_5 groupid=gvkey;
 model emerge = Abs_RD_Intensity k_div exp_ratio Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge	 
  / dist = negbin(p=2) ERRORCOMP = RANDOM ;
run ;
