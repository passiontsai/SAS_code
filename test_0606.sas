/*

proc countreg data = work.all_size_5  groupid=gvkey; 
model p_count  = 
  C_current_ratio C_firm_age C_firm_size C_firm_size_log C_prior_count  
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_5  groupid=gvkey; 
model p_citation  = 
  C_current_ratio C_firm_age C_firm_size C_firm_size_log C_prior_count  
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_5  groupid=gvkey; 
	model p_count = 
  Abs_RD_Exp Abs_RD_Intensity k_div exp_ratio 
  Dynamism_sale Munificence_sale Dynamism_operating Munificence_operating Dynamism_all Munificence_all
   C_current_ratio C_firm_age C_firm_size C_firm_size_log C_prior_count	 
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;



proc countreg data = work.all_size_5  groupid=gvkey; 
 model p_count = 
  Abs_RD_Intensity k_div exp_ratio
  AbsRDExpEnvDynSale AbsRDExpEnvMunSale AbsRDExpEnvDynOper AbsRDExpEnvMunOper AbsRDExpEnvDynSUM AbsRDExpEnvMunSUM	
  AbsRDIntEnvDynSale AbsRDIntEnvMunSale AbsRDIntEnvDynOper AbsRDIntEnvMunOper AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
  ExplorEnvDynSale ExplorEnvMunSale ExplorEnvDynOper ExplorEnvMunOper ExplorEnvDynSUM ExplorEnvMunSUM	
  kdivEnvDynSale kdivEnvMunSale kdivEnvDynOper kdivEnvMunOper kdivEnvDynSUM kdivEnvMunSUM
  Dynamism_sale Munificence_sale Dynamism_operating Munificence_operating Dynamism_all Munificence_all	
  C_current_ratio C_firm_age C_firm_size C_firm_size_log C_prior_count
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;

*/



proc countreg data = work.all_size_5 groupid=gvkey;
 model p_count = 
  Abs_RD_Intensity k_div exp_ratio
  AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
  ExplorEnvDynSUM ExplorEnvMunSUM	
  kdivEnvDynSUM kdivEnvMunSUM
  Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_count 
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;


proc countreg data = work.all_size_5 groupid=SIC;
 model p_count = 
  Abs_RD_Intensity k_div exp_ratio
  AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
  ExplorEnvDynSUM ExplorEnvMunSUM	
  kdivEnvDynSUM kdivEnvMunSUM
  Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_count 
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;


proc countreg data = work.all_size_5 groupid=gvkey;
 model p_citation = 
  Abs_RD_Intensity k_div exp_ratio
  AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
  ExplorEnvDynSUM ExplorEnvMunSUM	
  kdivEnvDynSUM kdivEnvMunSUM
  Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_5 groupid=SIC;
 model p_citation = 
  Abs_RD_Intensity k_div exp_ratio
  AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
  ExplorEnvDynSUM ExplorEnvMunSUM	
  kdivEnvDynSUM kdivEnvMunSUM
  Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_citation
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;

proc countreg data = work.all_size_5 groupid=gvkey;
 model emerge = 
  Abs_RD_Intensity k_div exp_ratio
  AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
  ExplorEnvDynSUM ExplorEnvMunSUM	
  kdivEnvDynSUM kdivEnvMunSUM
  Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;


proc countreg data = work.all_size_5 groupid=SIC;
 model emerge = 
  Abs_RD_Intensity k_div exp_ratio
  AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
  ExplorEnvDynSUM ExplorEnvMunSUM	
  kdivEnvDynSUM kdivEnvMunSUM
  Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_emerge
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;


proc countreg data = work.all_size_5 groupid=gvkey;
 model copy = 
  Abs_RD_Intensity k_div exp_ratio
  AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
  ExplorEnvDynSUM ExplorEnvMunSUM	
  kdivEnvDynSUM kdivEnvMunSUM
  Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;


proc countreg data = work.all_size_5 groupid=SIC;
 model copy = 
  Abs_RD_Intensity k_div exp_ratio
  AbsRDIntEnvDynSUM AbsRDIntEnvMunSUM	
  ExplorEnvDynSUM ExplorEnvMunSUM	
  kdivEnvDynSUM kdivEnvMunSUM
  Dynamism_all Munificence_all
  C_current_ratio C_firm_age C_firm_size_log C_prior_copy
  / dist = neggin(p=1) ERRORCOMP = RANDOM ;
run ;
