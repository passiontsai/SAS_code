
 proc sgplot data=work.chem_size_5;
 reg x=Abs_RD_Intensity  y=p_count;
 run; 

  proc sgplot data=work.chem_size_5;
 reg x=Abs_RD_Exp  y=p_count;
 run; 
 

  proc sgplot data=work.chem_size_5;
 reg x= k_div  y=p_count;
 run; 

  proc sgplot data=work.chem_size_5;
 reg x=exp_ratio  y=p_count;
 run; 
