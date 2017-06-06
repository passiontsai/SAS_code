
/* run negative bin */
proc genmod data= work.chem_5;
	model p_count = k_div exp_ratio  / type3 dist=negbin;
run; 


/* run poisson */
proc genmod data= work.chem_5;
	model p_count = k_div exp_ratio / type3 dist=poisson;
run; 


/* run random effect */
// glm = General Linear Model
proc glm data=work.chem_5;
	class k_div exp_ratio;
	model p_count = k_div exp_ratio;
	random k_div exp_ratio;
run;



/* all column name*/
gvkey	
datayear	
companyname	
SIC	

// control variable
C_current_ratio	
C_firm_size_in_thd	
C_firm_siza_log	
C_firm_age	
C_prior_count	
C_prior_citation	
C_prior_new	
C_prior_copy	
C_prior_emerge	

// moderator variable 
Dynamism_sale	
Munificence_sale	
Dynamism_operating	
Munificence_operating	
Dynamism_all	
Munificence_all	

// IV
RD_exp	
RD_intensity	
k_div	
exp_ratio

// DV 
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

// moderator effect 
AbsRDExp_EnvDynSale	
AbsRDExp_EnvMunSale	
AbsRDExp_EnvDynOper	
AbsRDExp_EnvMunOper	
AbsRDExp_EnvDynSUM	
AbsRDExp_EnvMunSUM	
AbsRDInt_EnvDynSale	
AbsRDInt_EnvMunSale	
AbsRDInt_EnvDynOper	
AbsRDInt_EnvMunOper	
AbsRDInt_EnvDynSUM	
AbsRDInt_EnvMunSUM	
Explor_EnvDynSale	
Explor_EnvMunSale	
Explor_EnvDynOper	
Explor_EnvMunOper	
Explor_EnvDynSUM	
Explor_EnvMunSUM	
kdiv_EnvDynSale	
kdiv_EnvMunSale	
kdiv_EnvDynOper	
kdiv_EnvMunOper	
kdiv_EnvDynSUM	
kdiv_EnvMunSUM


// Model 1
control -> DV
proc genmod data=work.chem_5;
	model DV = C_current_ratio C_firm_size_in_thd C_firm_siza_log C_firm_age C_prior_count C_prior_citation C_prior_new C_prior_copy C_prior_emerge / type3 dist=negbin;
run ;


// Model 2
control + IV + moderator variable -> DV
proc genmod data=work.chem_5;
	model DV = Dynamism_sale Munificence_sale Dynamism_operating Munificence_operating Dynamism_all Munificence_all RD_exp RD_intensity k_div exp_ratio C_current_ratio	C_firm_size_in_thd C_firm_siza_log C_firm_age C_prior_count C_prior_citation C_prior_new C_prior_copy C_prior_emerge / type3 dist=negbin;
run ;


// Model 3 
control + IV + moderator variable + moderator effect -> DV 
proc genmod data=work.chem_5;
	model DV = kdiv_EnvDynSUM kdiv_EnvMunSUM Explor_EnvDynSUM Explor_EnvMunSUM AbsRDExp_EnvDynSUM AbsRDExp_EnvMunSUM Dynamism_sale Munificence_sale Dynamism_operating Munificence_operating Dynamism_all Munificence_all RD_exp RD_intensity k_div exp_ratio C_current_ratio C_firm_size_in_thd C_firm_siza_log C_firm_age C_prior_count C_prior_citation C_prior_new C_prior_copy C_prior_emerge / type3 dist=negbin;
run ;



/* other cmd */
 proc glimmix data=counts method=quad;
      class sub;
      model y = x / link=log s dist=poisson;
      random int / subject=sub;
   run;


/* panel data */
proc panel data=data;
 id id t;
 model lwage = exp exp2 wks ed /RANONE;
run;


in SAS,
specifically, linear models with PROC GLM, logistic regression models with PROC LOGISTIC, models for count data
with PROC GENMOD, and survival models with PROC PHREG.



/*count data*/
proc genmod data = rwm1984 ;
class id;
model docvis = outwork age female married edlevel2 edlevel3 edlevel4 / dist= nb;
repeated subject = id;
run;


/*random + NB */
proc glimix data = data;
 class k_div exp_ratio;
 model p_count = k_div exp_ratio / dist = nb;
 random k_div exp_ratio;
run;
