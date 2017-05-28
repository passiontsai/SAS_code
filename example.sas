
/* run negative bin */
proc genmod data= work.chem_5;
	model p_count = k_div exp_ratio  / type3 dist=negbin;
run; 


/* run poisson */
proc genmod data= work.chem_5;
	model p_count = k_div exp_ratio / type3 dist=poisson;
run; 


/* run random effect */
proc glm data=work.chem_5;
	class k_div exp_ratio;
	model p_count = k_div exp_ratio;
	random k_div exp_ratio;
run;
