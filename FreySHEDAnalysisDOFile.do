/*
Matt Frey
ECO 392
SHED 2017 Analysis File
*/

//Check for necessary variables
sum ppage ppgender ppethm pphhsize pphouse ppmarit
tab FL1
tab FL2
tab FL3
tab FL4
tab FL5

/*
methodology
*/

//Table 1

//Both
sum finlit if male == 1
sum finlit if female == 1
sum finlit if white == 1
sum finlit if black == 1
sum finlit if hispanic == 1
sum finlit if other == 1
sum finlit if twoplusraces == 1
sum finlit if age1824 == 1
sum finlit if age2534 == 1
sum finlit if age3544 == 1
sum finlit if age4554 == 1
sum finlit if age5564 == 1
sum finlit if age65plus == 1
sum finlit if lessthanhighschool == 1
sum finlit if highschool == 1
sum finlit if somecollege == 1
sum finlit if bachorhigher == 1

//with finlitstate
sum finlit if male == 1 & finlitstate == 1
sum finlit if female == 1 & finlitstate == 1
sum finlit if white == 1 & finlitstate == 1
sum finlit if black == 1 & finlitstate == 1
sum finlit if hispanic == 1 & finlitstate == 1
sum finlit if other == 1 & finlitstate == 1
sum finlit if twoplusraces == 1 & finlitstate == 1
sum finlit if age1824 == 1 & finlitstate == 1
sum finlit if age2534 == 1 & finlitstate == 1
sum finlit if age3544 == 1 & finlitstate == 1
sum finlit if age4554 == 1 & finlitstate == 1
sum finlit if age5564 == 1 & finlitstate == 1
sum finlit if age65plus == 1 & finlitstate == 1
sum finlit if lessthanhighschool == 1 & finlitstate == 1
sum finlit if highschool == 1 & finlitstate == 1
sum finlit if somecollege == 1 & finlitstate == 1
sum finlit if bachorhigher == 1 & finlitstate == 1

//without finlitstate
sum finlit if male == 1 & finlitstate == 0
sum finlit if female == 1 & finlitstate == 0
sum finlit if white == 1 & finlitstate == 0
sum finlit if black == 1 & finlitstate == 0
sum finlit if hispanic == 1 & finlitstate == 0
sum finlit if other == 1 & finlitstate == 0
sum finlit if twoplusraces == 1 & finlitstate == 0
sum finlit if age1824 == 1 & finlitstate == 0
sum finlit if age2534 == 1 & finlitstate == 0
sum finlit if age3544 == 1 & finlitstate == 0
sum finlit if age4554 == 1 & finlitstate == 0
sum finlit if age5564 == 1 & finlitstate == 0
sum finlit if age65plus == 1 & finlitstate == 0
sum finlit if lessthanhighschool == 1 & finlitstate == 0
sum finlit if highschool == 1 & finlitstate == 0
sum finlit if somecollege == 1 & finlitstate == 0
sum finlit if bachorhigher == 1 & finlitstate == 0

//Preliminary regression

reg finlit male lessthanhighschool highschool somecollege bachorhigher white black other hispanic twoplusraces married widowed divorced separated nevermarried livwithpart flageid flageut flageaz flageco flageks flagetx flageia flagemo flagear flagela flageil flagemi flagetn flagega flagesc flagenc flageny flagenh

//diff-in-diff
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flageid intid, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagewy intwy, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flageut intut, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flageaz intaz, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flageco intco, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flageks intks, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagetx inttx, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flageia intia, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagemo intmo, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagear intar, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagela intla, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flageil intil, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagemi intmi, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagetn inttn, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagega intga, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagesc intsc, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagenc intnc, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flageny intny, r
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flagenh intnh, r

//one line diff-in-diff
reg finlit male white black other hispanic twoplusraces lessthanhighschool highschool somecollege bachorhigher married widowed divorced separated nevermarried livwithpart finlitstate flageall intall, r
