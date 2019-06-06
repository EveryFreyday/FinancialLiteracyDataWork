/*
Matt Frey
ECO 392
NFCS 2009-2015 Data Clean Up
*/

//Set Up Commands
log close
set more off

// Import .csv, generated command from UI
import delimited "/Users/mattfrey/Desktop/ECO 392/Data/Working/NFCS_2015_State_by_State_Tracking_Data_Excel copy/NFCS 2015 State Tracking Data 160619.csv", encoding(ISO-8859-1)

//Use this data
use "/Users/mattfrey/Desktop/ECO 392/NFCS Data/Working/NFCS_2015_State_by_State_Tracking_Data_Excel copy/FreyNFCSStateTrackingData.dta"


/* Clean Up Data */

//generate
rename track year
rename nfcsid id
rename stateq state
rename censusdiv div
rename censusreg region
rename a3 gender
rename a3ar_w age
rename a3b	genderage
rename a4a_new_w ethnic
rename a6 maritalstatus
rename a7 livearrange
rename a7a maritalstatus1
rename a11 dependents
rename a8 houseinc
rename am21 veteran
rename am22 veteranspouse
rename x3 veteranpivot
rename x4 veteranspousepivot
rename a9 workstatus
rename a10 currentemploymentspouse
rename a10a currentemploymentretire
rename a14 bestfinanceperson
rename j1 financesatisfaction
rename j2 financerisk
rename j3 finacnespendincome
rename j4 financecoverexpenses
rename j5 financeemerg
rename j6 financekidedu
rename j8 financeretirement
rename j9 financesave4retirement
rename j10 incdrop
rename j20 finance2kmonth
rename b1 acctcheck
rename b2 acctsave
rename b4 acctoverdraw
rename c1_2012 retirementplan12
rename c2_2012 retirementemployerplan12
rename c3_2012 retirementchooseinvestment12
rename c4_2012 retirementnotemployer12
rename c5_2012 retirementcontribute12
rename c10_2012 retirementloan12
rename c11_2012 retirementhardship12
rename c1_2009 retirementplan09
rename c2_2009 retirementemployerplan09
rename c3_2009 retirementchooseinvestment09
rename c4_2009 retirementnotemployer09
rename c5_2009 retirementcontribute09
rename c10_2009 retirementloan09
rename c11_2009 retirementhardship09
rename b14 investother
rename d20_1 incomesalarywages
rename d20_2 incomepension
rename d20_3 incomewithdrawretire
rename d20_4 incomesocialsecurity
rename d20_5 incomegovtbenefit
rename d20_6 incomebiz
rename d20_7 incomeextfamily
rename ea_1 homeown
rename e7 homemort
rename e8 homeeqloan
rename e20 homeowe
rename f1 ccnum
rename f2_1 ccpayfull
rename f2_2 cccarrybal
rename f2_3 ccminpay
rename f2_4 cclatefee
rename f2_5 cclimitfee
rename f2_6 ccadvance
rename f10 ccinfocollect
rename g1 autoloan
rename g20 healthcareunpaidbills
rename g25_1 loanautotitle
rename g25_2 loanpayday
rename g25_4 loanpawnshop
rename g25_5 loanrenttoown
rename g23 toomuchdebt
rename h1 healthins
rename m1_1 financeday2day
rename m1_2 mathiness
rename m4 perclit
rename m20 fineduoffer
rename m21_1 fineduhs
rename m21_3 fineduemp
rename m21_4 finedumil
rename m6 q1intrate100
rename m7 q2intratesaveacct
rename m8 q3intraterise
rename m9 q4mort
rename m10 q5stock

/* Generate */

*Generate state dummy variables*

gen alabama=1 if state==1
replace alabama=0 if alabama==.

gen alaska=1 if state==2
replace alaska=0 if alaska ==.

gen arizona=1 if state==3
replace arizona=0 if arizona==.

gen arkansas=1 if state==4
replace arkansas=0 if arkansas==.

gen california=1 if state==5
replace california=0 if california==.

gen colorado=1 if state ==6
replace colorado=0 if colorado==.

gen connecticut=1 if state==7
replace connecticut=0 if connecticut==.

gen delaware=1 if state==8
replace delaware=0 if delaware==.

gen districtofcolumbia=1 if state==9
replace districtofcolumbia=0 if districtofcolumbia==.

gen florida=1 if state==10
replace florida=0 if florida==.

gen georgia=1 if state==11
replace georgia=0 if georgia==.

gen hawaii=1 if state==12
replace hawaii=0 if hawaii==.

gen idaho=1 if state==13
replace idaho=0 if idaho==.

gen illinois=1 if state==14
replace illinois=0 if illinois==.

gen indiana=1 if state==15
replace indiana=0 if indiana==.

gen iowa=1 if state==16
replace iowa=0 if iowa==.

gen kansas=1 if state==17
replace kansas=0 if kansas==.

gen kentucky=1 if state==18
replace  kentucky=0 if kentucky==.

gen louisiana=1 if state==19
replace louisiana=0 if louisiana==.

gen maine=1 if state==20
replace maine=0 if maine==.

gen maryland=1 if state==21
replace maryland=0 if maryland==.

gen massachusetts=1 if state==22
replace massachusetts=0 if massachusetts==.

gen michigan=1 if state==23
replace michigan=0 if michigan==.

gen minnesota=1 if state==24
replace minnesota=0 if minnesota==.

gen mississippi=1 if state==25
replace mississippi=0 if mississippi==.

gen missouri=1 if state==26
replace missouri=0 if missouri==.

gen montana=1 if state==27
replace montana=0 if montana==.

gen nebraska=1 if state==28
replace nebraska=0 if nebraska==.

gen nevada=1 if state==29
replace nevada=0 if nevada==.

gen newhampshire=1 if state==30
replace newhampshire=0 if newhampshire==.

gen newjersey=1 if state==31
replace newjersey=0 if newjersey==.

gen newmexico=1 if state==32
replace newmexico=0 if newmexico==.

gen newyork=1 if state==33
replace newyork=0 if newyork==.

gen northcarolina=1 if state==34
replace northcarolina=0 if northcarolina==.

gen northdakota=1 if state==35
replace northdakota=0 if northdakota==.

gen ohio=1 if state==36
replace ohio=0 if ohio==.

gen oklahoma=1 if state==37
replace oklahoma=0 if oklahoma==.

gen oregon=1 if state==38
replace oregon=0 if oregon==.

gen pennsylvania=1 if state==39
replace pennsylvania=0 if pennsylvania==.

gen rhodeisland=1 if state==40
replace rhodeisland=0 if rhodeisland==.

gen southcarolina=1 if state==41
replace southcarolina=0 if southcarolina==.

gen southdakota=1 if state==42
replace southdakota=0 if southdakota==.

gen tennessee=1 if state==43
replace tennessee=0 if tennessee==.

gen texas=1 if state ==44
replace texas=0 if texas==.

gen utah=1 if state==45
replace utah=0 if utah==.

gen vermont=1 if state==46
replace vermont=0 if vermont==.

gen virginia=1 if state==47
replace virginia=0 if virginia==.

gen washington=1 if state==48
replace washington=0 if washington==.

gen westvirginia=1 if state==49
replace westvirginia=0 if westvirginia==.

gen wisconsin=1 if state==50
replace wisconsin=0 if wisconsin==.

gen wyoming=1 if state==51
replace wyoming=0 if wyoming==.

//Basic demographics

//Age
gen male = gender == 1
gen age1824 = age == 1
gen age2534 = age == 2
gen age3544 = age == 3
gen age4554 = age == 4
gen age5564 = age == 5
gen	age65plus	=	age == 6

//Male age
gen	maleage1824	=	genderage == 1
gen	maleage2534	=	genderage == 2
gen	maleage3544	=	genderage == 3
gen	maleage4554	=	genderage == 4
gen	maleage5564	=	genderage == 5
gen	maleage65plus	=	genderage == 6

//Female age
gen femaleage1824 = genderage == 7
gen femaleage2534 = genderage == 8
gen femaleage3544 = genderage == 9
gen femaleage4554 = genderage == 10
gen femaleage5564 = genderage == 11
gen femaleage65plus = genderage == 12

//Living arrangements
gen white = (ethnic == 1)
gen married = (maritalstatus == 1)
gen single = (maritalstatus == 2)
gen seperated = (maritalstatus == 3)
gen divorced = (maritalstatus == 4)
gen divsep = seperated + divorced
label var divsep "Divorced or Seperated"
gen widow = (maritalstatus == 5)
gen livealone = livearrange == 1
gen liveso = livearrange == 2
gen liveparent = livearrange == 3
gen liveother = livearrange == 4

//Work status
gen selfemp = (workstat==1)
gen fulltime = (workstat==2)
gen parttime = (workstat==3)
gen homemaker = (workstat==4)
gen student = (workstat==5)
gen disabled = (workstat==6)
gen unemp = (workstat==7)
gen retired = (workstat==8)

//Household income
gen less15k = (houseinc==1)
gen i15_25k = (houseinc==2)
gen i25_35k = (houseinc==3)
gen i35_50k = (houseinc==4)
gen i50_75k = (houseinc==5)
gen i75_100k = (houseinc==6)
gen i100k_150k = (houseinc==7)
gen plus150k = (houseinc==8)

//Fin edu general
destring fineduoffer, replace
gen fegen = 1 if  fineduoffer == 1
label var fegen "Financial Literacy General"
replace fegen = 1 if fineduoffer == 2
replace fegen = 0 if fineduoffer == 3

//Fin edu for hs, emp, mil
destring fineduhs, replace
gen fehs = 1 if fineduhs == 1
label var fehs "Financial Education through High School"
replace fehs = 0 if fineduhs == 2

destring fineduemp, replace
gen feemp = 1 if fineduemp == 1
label var feemp " Financial Education through Employer"
replace feemp = 0 if fineduhs == 2

destring finedumil, replace
gen femil = 1 if finedumil == 1
label var femil "Financial Education through Military"
replace femil = 0 if finedumil == 2

//Fin edu offer (continuous)
gen feducon = 0 if fineduoffer == 98
replace feducon = 1 if fineduoffer == 3
replace feducon = 2 if fineduoffer == 1
replace feducon = 3 if fineduoffer == 2
label var feducon "Fin Edu Offered (continuous)"

//Fin edu offer (continuous)
gen fedu = 0 if fineduoffer == 3
replace fedu = 1 if fineduoffer ==1 | fineduoffer == 2
label var fedu "Fin Edu Offered"

//Financial particpate
gen fedup = 1 if fineduoffer == 2
label var fedup "Fin Edu Offered and Participate"
replace fedup = 0 if fineduoffer == 1
replace fedup = 0 if fineduoffer == 3

//Financial exposure
gen feexp = 1 if fineduoffer == 1
replace feexp = 1 if fineduoffer == 2
replace feexp = 0 if fineduoffer == 3
label var feexp "Fin Edu Financial Exposure"

//Dependents
gen child1 = (dependents==1)
gen child2 = (dependents==2)
gen child3 = (dependents==3)
gen child4plus = (dependents==4)
gen childnotdep = (dependents==5)
gen childnone = (dependents==6)
gen child = 0 if dependents ==6 | dependents == 5
replace child = 1 if dependents == 1

//Income drop
gen idropyes = (incdrop==1)
gen idropno = (incdrop==2)
gen idropdk = (incdrop==98)
gen indroppns = (incdrop==99)

//Correct questions
gen q1intrate100answer = q1intrate100 == 1
gen q2intratesaveacctanswer = q2intratesaveacct == 3
gen q3intrateriseanswer = q3intraterise == 2
gen q4mortanswer = q4mort == 1
gen q5stockanswer = q5stock == 2

//Perc lit
gen perlit = perclit
label var perlit "Perceived Literacy"
replace perlit = . if perclit == 98 | perclit == 99

//Actual Lit
gen actlithold = q1intrate100answer + q2intratesaveacctanswer + q3intrateriseanswer + q4mortanswer + q5stockanswer
gen actlitp = (actlithold/5)
label var actlitp "Actual Literacy"
drop actlithold

/* Sum table */

//2009
sum actlitp fegen fedup feexp male child idropyes age1824 age2534 age3544 age4554 age5564 age65plus married single divsep widow selfemp fulltime parttime homemaker student disabled unemp retired livealone liveso liveparent liveother less15k i25_35k i35_50k i50_75k i75_100k i100k_150k plus150k if year == 2009 & white == 0
sum actlitp fegen fedup feexp male child idropyes age1824 age2534 age3544 age4554 age5564 age65plus married single divsep widow selfemp fulltime parttime homemaker student disabled unemp retired livealone liveso liveparent liveother less15k i25_35k i35_50k i50_75k i75_100k i100k_150k plus150k if year == 2009 & white == 1
sum actlitp fegen fedup feexp male child idropyes age1824 age2534 age3544 age4554 age5564 age65plus married single divsep widow selfemp fulltime parttime homemaker student disabled unemp retired livealone liveso liveparent liveother less15k i25_35k i35_50k i50_75k i75_100k i100k_150k plus150k if year == 2009

//2012
sum actlitp fegen fedup feexp male child idropyes age1824 age2534 age3544 age4554 age5564 age65plus married single divsep widow selfemp fulltime parttime homemaker student disabled unemp retired livealone liveso liveparent liveother less15k i25_35k i35_50k i50_75k i75_100k i100k_150k plus150k if year == 2012 & white == 0
sum actlitp fegen fedup feexp male child idropyes age1824 age2534 age3544 age4554 age5564 age65plus married single divsep widow selfemp fulltime parttime homemaker student disabled unemp retired livealone liveso liveparent liveother less15k i25_35k i35_50k i50_75k i75_100k i100k_150k plus150k if year == 2012 & white == 1
sum actlitp fegen fedup feexp male child idropyes age1824 age2534 age3544 age4554 age5564 age65plus married single divsep widow selfemp fulltime parttime homemaker student disabled unemp retired livealone liveso liveparent liveother less15k i25_35k i35_50k i50_75k i75_100k i100k_150k plus150k if year == 2012

//2015
sum actlitp fegen fedup feexp male child idropyes age1824 age2534 age3544 age4554 age5564 age65plus married single divsep widow selfemp fulltime parttime homemaker student disabled unemp retired livealone liveso liveparent liveother less15k i25_35k i35_50k i50_75k i75_100k i100k_150k plus150k if year == 2015 & white == 0
sum actlitp fegen fedup feexp male child idropyes age1824 age2534 age3544 age4554 age5564 age65plus married single divsep widow selfemp fulltime parttime homemaker student disabled unemp retired livealone liveso liveparent liveother less15k i25_35k i35_50k i50_75k i75_100k i100k_150k plus150k if year == 2015 & white == 1
sum actlitp fegen fedup feexp male child idropyes age1824 age2534 age3544 age4554 age5564 age65plus married single divsep widow selfemp fulltime parttime homemaker student disabled unemp retired livealone liveso liveparent liveother less15k i25_35k i35_50k i50_75k i75_100k i100k_150k plus150k if year == 2015

/* Save */
save "/Users/mattfrey/Desktop/ECO 392/Data/Working/NFCS_2015_State_by_State_Tracking_Data_Excel copy/FreyNFCSStateTrackingData.dta"

/* Done! */
beep
beep
beep
