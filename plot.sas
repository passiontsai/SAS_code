/*pat_count*/
proc sgplot data= work.all_size_3_0619;
reg x=Abs_RD_Exp y= pat_count;
run;

proc sgplot data= work.all_size_3_0619;
reg x=Abs_RD_Intensity y= pat_count;
run;

proc sgplot data= work.all_size_3_0619;
reg x=k_div y= pat_count;
run;

proc sgplot data= work.all_size_3_0619;
reg x=exp_ratio y= pat_count;
run;


/*pat_citation*/
proc sgplot data= work.all_size_3_0619;
reg x=Abs_RD_Exp y= pat_citation;
run;

proc sgplot data= work.all_size_3_0619;
reg x=Abs_RD_Intensity y= pat_citation;
run;

proc sgplot data= work.all_size_3_0619;
reg x=k_div y= pat_citation;
run;

proc sgplot data= work.all_size_3_0619;
reg x=exp_ratio y= pat_citation;
run;


/* innovation agility*/
proc sgplot data= work.all_size_3_0619;
reg x=Abs_RD_Exp y= pair_copy_super;
run;

proc sgplot data= work.all_size_3_0619;
reg x=Abs_RD_Intensity y= pair_copy_super;
run;

proc sgplot data= work.all_size_3_0619;
reg x=k_div y= pair_copy_super;
run;

proc sgplot data= work.all_size_3_0619;
reg x=exp_ratio y= pair_copy_super;
run;



