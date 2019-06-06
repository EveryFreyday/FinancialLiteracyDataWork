/*
Matt Frey
ECO 392
SHED 2017 Data Clean Up
*/

//Set Up Commands
set more off

// Import, generated command from UI

use "/Users/mattfrey/Desktopß/ECO 392/SHED Data/Working/SHED_2017_public_data.dta"

/*
Clean Data
*/

//language proficiency, DOV_ACSLANG
gen engproficient = DOV_ACSLANG == 1
gen bilingual = DOV_ACSLANG == 2
gen spanproficient = DOV_ACSLANG == 3
gen nonhispan = DOV_ACSLANG == 4

//age, ppage
gen age18 = ppage == 18
gen age19 = ppage == 19
gen age20 = ppage == 20
gen age21 = ppage == 21
gen age22 = ppage == 22
gen age23 = ppage == 23
gen age24 = ppage == 24
gen age25 = ppage == 25
gen age26 = ppage == 26
gen age27 = ppage == 27
gen age28 = ppage == 28
gen age29 = ppage == 29
gen age30 = ppage == 30
gen age31 = ppage == 31
gen age32 = ppage == 32
gen age33 = ppage == 33
gen age34 = ppage == 34
gen age35 = ppage == 35
gen age36 = ppage == 36
gen age37 = ppage == 37
gen age38 = ppage == 38
gen age39 = ppage == 39
gen age40 = ppage == 40
gen age41 = ppage == 41
gen age42 = ppage == 42
gen age43 = ppage == 43
gen age44 = ppage == 44
gen age45 = ppage == 45
gen age46 = ppage == 46
gen age47 = ppage == 47
gen age48 = ppage == 48
gen age49 = ppage == 49
gen age50 = ppage == 50
gen age51 = ppage == 51
gen age52 = ppage == 52
gen age53 = ppage == 53
gen age54	=	ppage	== 54
gen age55	=	ppage	== 55
gen age56	=	ppage	== 56
gen age57	=	ppage	== 57
gen age58	=	ppage	== 58
gen age59	=	ppage	== 59
gen age60	=	ppage	== 60
gen age61	=	ppage	== 61
gen age62	=	ppage	== 62
gen age63	=	ppage	== 63
gen age64	=	ppage	== 64
gen age65	=	ppage	== 65
gen age66	=	ppage	== 66
gen age67	=	ppage	== 67
gen age68	=	ppage	== 68
gen age69	=	ppage	== 69
gen age70	=	ppage	== 70
gen age71	=	ppage	== 71
gen age72	=	ppage	== 72
gen age73	=	ppage	== 73
gen age74	=	ppage	== 74
gen age75	=	ppage	== 75
gen age76	=	ppage	== 76
gen age77	=	ppage	== 77
gen age78	=	ppage	== 78
gen age79	=	ppage	== 79
gen age80	=	ppage	== 80
gen age81	=	ppage	== 81
gen age82	=	ppage	== 82
gen age83	=	ppage	== 83
gen age84	=	ppage	== 84
gen age85	=	ppage	== 85
gen age86	=	ppage	== 86
gen age87	=	ppage	== 87
gen age88	=	ppage	== 88
gen age89	=	ppage	== 89
gen age90	=	ppage	== 90
gen age91	=	ppage	== 91
gen age92	=	ppage	== 92
gen age93	=	ppage	== 93
gen age94	=	ppage	== 94

//generate age buckets, helps with table 1 display
gen age1824 = 1 if ppage <= 24

gen age2534 = 1 if ppage > 24 & ppage <= 34

gen age3544 = 1 if ppage > 34 & ppage <= 44

gen age4554 = 1 if ppage > 44 & ppage <= 54

gen age5564 = 1 if ppage > 54 & ppage <= 64

gen age65plus = 1 if ppage >= 65

//sex
gen male = ppgender == 1
gen female = 1 if male == 0

//education (categorical), ppeducat
gen lessthanhighschool = ppeducat == 1
gen highschool = ppeducat == 2
gen somecollege = ppeducat == 3
gen bachorhigher = ppeducat == 4

//race/ethnicity, ppethm
gen white = ppethm == 1
gen black = ppethm == 2
gen other = ppethm == 3
gen hispanic = ppethm == 4
gen twoplusraces = ppethm == 5

//household size range - (1,12), pphhsize
gen hhsize1 = pphhsize == 1
gen hhsize2 = pphhsize == 2
gen hhsize3 = pphhsize == 3
gen hhsize4 = pphhsize == 4
gen hhsize5 = pphhsize == 5
gen hhsize6 = pphhsize == 6
gen hhsize7 = pphhsize == 7
gen hhsize8 = pphhsize == 8
gen hhsize9 = pphhsize == 9
gen hhsize10 = pphhsize == 10
gen hhsize11 = pphhsize == 11
gen hhsize12 = pphhsize == 12

//housing type, pphouse
gen onefamdetached = pphouse == 1
gen onefamattach = pphouse == 2
gen bldgwapart = pphouse == 3
gen mobilehome = pphouse == 4
gen otherhome = pphouse == 5

//household income, ppincimp


//marital status, ppmarit
gen married = ppmarit == 1
gen widowed = ppmarit == 2
gen divorced = ppmarit == 3
gen separated = ppmarit == 4
gen nevermarried = ppmarit == 5
gen livwithpart = ppmarit == 6

//fin lit questions
//correct questions
gen q1housepricesanswer = FL1 == 2
gen q2stockansnwer = FL2 == 2
gen q3longtimeansweranswer = FL3 == 1
gen q4intrateanswer = FL4 == 3
gen q5stockanswer = FL5 == 1

//actual Lit
gen actlithold = q1housepricesanswer + q2stockansnwer + q3longtimeansweranswer + q4intrateanswer + q5stockanswer
gen finlit = (actlithold/5)
label var finlit "Actual Literacy"
drop actlithold

//generate state variables
gen me = 1 if ppstaten == 11
replace me = 0 if ppstaten != 11
gen nh = 1 if ppstaten == 12
replace nh = 0 if ppstaten != 12
gen vt = 1 if ppstaten == 13
replace vt = 0 if ppstaten != 13
gen ma = 1 if ppstaten == 14
replace ma = 0 if ppstaten != 14
gen ri = 1 if ppstaten == 15
replace ri = 0 if ppstaten != 15
gen ct = 1 if ppstaten == 16
replace ct = 0 if ppstaten != 16
gen ny = 1 if ppstaten == 21
replace ny = 0 if ppstaten != 21
gen nj = 1 if ppstaten == 22
replace nj = 0 if ppstaten != 22
gen pa = 1 if ppstaten == 23
replace pa = 0 if ppstaten != 23
gen oh = 1 if ppstaten == 31
replace oh = 0 if ppstaten != 31
gen ind = 1 if ppstaten == 32
replace ind = 0 if ppstaten != 32
gen il = 1 if ppstaten == 33
replace il = 0 if ppstaten != 33
gen mi = 1 if ppstaten == 34
replace mi = 0 if ppstaten != 34
gen wi = 1 if ppstaten == 35
replace wi = 0 if ppstaten != 35
gen mn = 1 if ppstaten == 41
replace mn = 0 if ppstaten != 41
gen ia = 1 if ppstaten == 42
replace ia = 0 if ppstaten != 42
gen mo = 1 if ppstaten == 43
replace mo = 0 if ppstaten != 43
gen nd = 1 if ppstaten == 44
replace nd = 0 if ppstaten != 44
gen sd = 1 if ppstaten == 45
replace sd = 0 if ppstaten != 45
gen ne = 1 if ppstaten == 46
replace ne = 0 if ppstaten != 46
gen ks = 1 if ppstaten == 47
replace ks = 0 if ppstaten != 47
gen de = 1 if ppstaten == 51
replace de = 0 if ppstaten != 51
gen md = 1 if ppstaten == 52
replace md = 0 if ppstaten != 52
gen dc = 1 if ppstaten == 53
replace dc = 0 if ppstaten != 53
gen va = 1 if ppstaten == 54
replace va = 0 if ppstaten != 54
gen wv = 1 if ppstaten == 55
replace wv = 0 if ppstaten != 55
gen nc = 1 if ppstaten == 56
replace nc = 0 if ppstaten != 56
gen sc = 1 if ppstaten == 57
replace sc = 0 if ppstaten != 57
gen ga = 1 if ppstaten == 58
replace ga = 0 if ppstaten != 58
gen fl = 1 if ppstaten == 59
replace fl = 0 if ppstaten != 59
gen ky = 1 if ppstaten == 61
replace ky = 0 if ppstaten != 61
gen tn = 1 if ppstaten == 62
replace tn = 0 if ppstaten != 62
gen al = 1 if ppstaten == 63
replace al = 0 if ppstaten != 63
gen ms = 1 if ppstaten == 64
replace ms = 0 if ppstaten != 64
gen ar = 1 if ppstaten == 71
replace ar = 0 if ppstaten != 71
gen la = 1 if ppstaten == 72
replace la = 0 if ppstaten != 72
gen ok = 1 if ppstaten == 73
replace ok = 0 if ppstaten != 73
gen tx = 1 if ppstaten == 74
replace tx = 0 if ppstaten != 74
gen mt = 1 if ppstaten == 81
replace mt = 0 if ppstaten != 81
gen id = 1 if ppstaten == 82
replace id = 0 if ppstaten != 82
gen wy = 1 if ppstaten == 83
replace wy = 0 if ppstaten != 83
gen co = 1 if ppstaten == 84
replace co = 0 if ppstaten != 84
gen nm = 1 if ppstaten == 85
replace nm = 0 if ppstaten != 85
gen az = 1 if ppstaten == 86
replace az = 0 if ppstaten != 86
gen ut = 1 if ppstaten == 87
replace ut = 0 if ppstaten != 87
gen nv = 1 if ppstaten == 88
replace nv = 0 if ppstaten != 88
gen wa = 1 if ppstaten == 91
replace wa = 0 if ppstaten != 91
gen or = 1 if ppstaten == 92
replace or = 0 if ppstaten != 92
gen ca = 1 if ppstaten == 93
replace ca = 0 if ppstaten != 93
gen ak = 1 if ppstaten == 94
replace ak = 0 if ppstaten != 94
gen hi = 1 if ppstaten == 95
replace hi = 0 if ppstaten != 95

//generate fin lit state variables
gen finlitstate = id
replace finlitstate = 1 if wy == 1
replace finlitstate = 1 if ut == 1
replace finlitstate = 1 if az == 1
replace finlitstate = 1 if co == 1
replace finlitstate = 1 if ks == 1
replace finlitstate = 1 if tx == 1
replace finlitstate = 1 if ia == 1
replace finlitstate = 1 if mo == 1
replace finlitstate = 1 if ar == 1
replace finlitstate = 1 if la == 1
replace finlitstate = 1 if il == 1
replace finlitstate = 1 if mi == 1
replace finlitstate = 1 if tn == 1
replace finlitstate = 1 if ga == 1
replace finlitstate = 1 if sc == 1
replace finlitstate = 1 if nc == 1
replace finlitstate = 1 if ny == 1
replace finlitstate = 1 if nh == 1

//generate fin lit age variables
gen flageid = age18
replace flageid = 1 if age19 == 1
replace flageid = 1 if age20 == 1
replace flageid = 1 if age21 == 1
replace flageid = 1 if age22 == 1
replace flageid = 1 if age23 == 1
replace flageid = 1 if age24 == 1
replace flageid = 1 if age25 == 1
replace flageid = 1 if age26 == 1
replace flageid = 1 if age27 == 1
replace flageid = 1 if age28 == 1
replace flageid = 1 if age29 == 1
replace flageid = 1 if age30 == 1

gen flagewy = age18
replace flagewy = 1 if age19 == 1
replace flagewy = 1 if age20 == 1
replace flagewy = 1 if age21 == 1
replace flagewy = 1 if age22 == 1
replace flagewy = 1 if age23 == 1
replace flagewy = 1 if age24 == 1
replace flagewy = 1 if age25 == 1
replace flagewy = 1 if age26 == 1
replace flagewy = 1 if age27 == 1
replace flagewy = 1 if age28 == 1
replace flagewy = 1 if age29 == 1
replace flagewy = 1 if age30 == 1
replace flagewy = 1 if age31 == 1
replace flagewy = 1 if age32 == 1
replace flagewy = 1 if age33 == 1
replace flagewy = 1 if age34 == 1
replace flagewy = 1 if age35 == 1

gen flageut = age18
replace flageut = 1 if age19 == 1
replace flageut = 1 if age20 == 1
replace flageut = 1 if age21 == 1
replace flageut = 1 if age22 == 1
replace flageut = 1 if age23 == 1
replace flageut = 1 if age24 == 1
replace flageut = 1 if age25 == 1
replace flageut = 1 if age26 == 1
replace flageut = 1 if age27 == 1
replace flageut = 1 if age28 == 1
replace flageut = 1 if age29 == 1
replace flageut = 1 if age30 == 1
replace flageut = 1 if age31 == 1
replace flageut = 1 if age32 == 1
replace flageut = 1 if age33 == 1
replace flageut = 1 if age34 == 1
replace flageut = 1 if age35 == 1

gen flageaz = age18
replace flageaz = 1 if age19 == 1
replace flageaz = 1 if age20 == 1
replace flageaz = 1 if age21 == 1
replace flageaz = 1 if age22 == 1
replace flageaz = 1 if age23 == 1
replace flageaz = 1 if age24 == 1
replace flageaz = 1 if age25 == 1
replace flageaz = 1 if age26 == 1
replace flageaz = 1 if age27 == 1
replace flageaz = 1 if age28 == 1

gen flageco = age18
replace flageco = 1 if age19 == 1
replace flageco = 1 if age20 == 1
replace flageco = 1 if age21 == 1
replace flageco = 1 if age22 == 1
replace flageco = 1 if age23 == 1
replace flageco = 1 if age24 == 1
replace flageco = 1 if age25 == 1
replace flageco = 1 if age26 == 1
replace flageco = 1 if age27 == 1
replace flageco = 1 if age28 == 1
replace flageco = 1 if age29 == 1
replace flageco = 1 if age30 == 1
replace flageco = 1 if age31 == 1
replace flageco = 1 if age32 == 1

gen flageks = age18
replace flageks = 1 if age19 == 1
replace flageks = 1 if age20 == 1
replace flageks = 1 if age21 == 1
replace flageks = 1 if age22 == 1
replace flageks = 1 if age23 == 1
replace flageks = 1 if age24 == 1
replace flageks = 1 if age25 == 1

gen flagetx = age18
replace flagetx = 1 if age19 == 1
replace flagetx = 1 if age20 == 1
replace flagetx = 1 if age21 == 1
replace flagetx = 1 if age22 == 1
replace flagetx = 1 if age23 == 1
replace flagetx = 1 if age24 == 1
replace flagetx = 1 if age25 == 1
replace flagetx = 1 if age26 == 1
replace flagetx = 1 if age27 == 1
replace flagetx = 1 if age28 == 1
replace flagetx = 1 if age29 == 1
replace flagetx = 1 if age30 == 1

gen flageia = age18
replace flageia = 1 if age19 == 1
replace flageia = 1 if age20 == 1
replace flageia = 1 if age21 == 1
replace flageia = 1 if age22 == 1
replace flageia = 1 if age23 == 1
replace flageia = 1 if age24 == 1
replace flageia = 1 if age25 == 1
replace flageia = 1 if age26 == 1

gen flagemo = age18
replace flagemo = 1 if age19 == 1
replace flagemo = 1 if age20 == 1
replace flagemo = 1 if age21 == 1
replace flagemo = 1 if age22 == 1
replace flagemo = 1 if age23 == 1
replace flagemo = 1 if age24 == 1
replace flagemo = 1 if age25 == 1
replace flagemo = 1 if age26 == 1
replace flagemo = 1 if age27 == 1

gen flagear = age18
replace flagear = 1 if age19 == 1
replace flagear = 1 if age20 == 1
replace flagear = 1 if age21 == 1
replace flagear = 1 if age22 == 1
replace flagear = 1 if age23 == 1
replace flagear = 1 if age24 == 1
replace flagear = 1 if age25 == 1
replace flagear = 1 if age26 == 1
replace flagear = 1 if age27 == 1
replace flagear = 1 if age28 == 1
replace flagear = 1 if age29 == 1
replace flagear = 1 if age30 == 1
replace flagear = 1 if age31 == 1
replace flagear = 1 if age32 == 1

gen flagela = age18
replace flagela = 1 if age19 == 1
replace flagela = 1 if age20 == 1
replace flagela = 1 if age21 == 1
replace flagela = 1 if age22 == 1
replace flagela = 1 if age23 == 1
replace flagela = 1 if age24 == 1
replace flagela = 1 if age25 == 1
replace flagela = 1 if age26 == 1
replace flagela = 1 if age27 == 1
replace flagela = 1 if age28 == 1
replace flagela = 1 if age29 == 1
replace flagela = 1 if age30 == 1
replace flagela = 1 if age31 == 1
replace flagela = 1 if age32 == 1

gen flageil = age18
replace flageil = 1 if age19 == 1
replace flageil = 1 if age20 == 1
replace flageil = 1 if age21 == 1
replace flageil = 1 if age22 == 1
replace flageil = 1 if age23 == 1
replace flageil = 1 if age24 == 1
replace flageil = 1 if age25 == 1
replace flageil = 1 if age26 == 1
replace flageil = 1 if age27 == 1
replace flageil = 1 if age28 == 1
replace flageil = 1 if age29 == 1
replace flageil = 1 if age30 == 1
replace flageil = 1 if age31 == 1
replace flageil = 1 if age32 == 1
replace flageil = 1 if age33 == 1
replace flageil = 1 if age34 == 1
replace flageil = 1 if age35 == 1
replace flageil = 1 if age36 == 1
replace flageil = 1 if age37 == 1
replace flageil = 1 if age38 == 1
replace flageil = 1 if age39 == 1
replace flageil = 1 if age40 == 1
replace flageil = 1 if age41 == 1
replace flageil = 1 if age42 == 1
replace flageil = 1 if age43 == 1
replace flageil = 1 if age44 == 1
replace flageil = 1 if age45 == 1
replace flageil = 1 if age46 == 1
replace flageil = 1 if age47 == 1
replace flageil = 1 if age48 == 1
replace flageil = 1 if age49 == 1
replace flageil = 1 if age50 == 1
replace flageil = 1 if age51 == 1
replace flageil = 1 if age52 == 1
replace flageil = 1 if age53 == 1
replace flageil = 1 if age54 == 1
replace flageil = 1 if age55 == 1
replace flageil = 1 if age56 == 1
replace flageil = 1 if age57 == 1
replace flageil = 1 if age58 == 1
replace flageil = 1 if age59 == 1
replace flageil = 1 if age60 == 1
replace flageil = 1 if age61 == 1
replace flageil = 1 if age62 == 1
replace flageil = 1 if age63 == 1
replace flageil = 1 if age64 == 1
replace flageil = 1 if age65 == 1
replace flageil = 1 if age66 == 1
replace flageil = 1 if age67 == 1

gen flagemi = age18
replace flagemi = 1 if age19 == 1
replace flagemi = 1 if age20 == 1
replace flagemi = 1 if age21 == 1
replace flagemi = 1 if age22 == 1
replace flagemi = 1 if age23 == 1
replace flagemi = 1 if age24 == 1
replace flagemi = 1 if age25 == 1
replace flagemi = 1 if age26 == 1
replace flagemi = 1 if age27 == 1
replace flagemi = 1 if age28 == 1
replace flagemi = 1 if age29 == 1
replace flagemi = 1 if age30 == 1
replace flagemi = 1 if age31 == 1
replace flagemi = 1 if age32 == 1
replace flagemi = 1 if age33 == 1
replace flagemi = 1 if age34 == 1
replace flagemi = 1 if age35 == 1
replace flagemi = 1 if age36 == 1
replace flagemi = 1 if age37 == 1
replace flagemi = 1 if age38 == 1
replace flagemi = 1 if age39 == 1

gen flagetn = age18
replace flagetn = 1 if age19 == 1
replace flagetn = 1 if age20 == 1
replace flagetn = 1 if age21 == 1
replace flagetn = 1 if age22 == 1
replace flagetn = 1 if age23 == 1
replace flagetn = 1 if age24 == 1
replace flagetn = 1 if age25 == 1
replace flagetn = 1 if age26 == 1

gen flagega = age18
replace flagega = 1 if age19 == 1
replace flagega = 1 if age20 == 1
replace flagega = 1 if age21 == 1
replace flagega = 1 if age22 == 1
replace flagega = 1 if age23 == 1
replace flagega = 1 if age24 == 1
replace flagega = 1 if age25 == 1
replace flagega = 1 if age26 == 1
replace flagega = 1 if age27 == 1
replace flagega = 1 if age28 == 1
replace flagega = 1 if age29 == 1
replace flagega = 1 if age30 == 1

gen flagesc = age18
replace flagesc = 1 if age19 == 1
replace flagesc = 1 if age20 == 1
replace flagesc = 1 if age21 == 1
replace flagesc = 1 if age22 == 1
replace flagesc = 1 if age23 == 1
replace flagesc = 1 if age24 == 1
replace flagesc = 1 if age25 == 1
replace flagesc = 1 if age26 == 1
replace flagesc = 1 if age27 == 1
replace flagesc = 1 if age28 == 1

gen flagenc = age18
replace flagenc = 1 if age19 == 1
replace flagenc = 1 if age20 == 1
replace flagenc = 1 if age21 == 1
replace flagenc = 1 if age22 == 1
replace flagenc = 1 if age23 == 1
replace flagenc = 1 if age24 == 1
replace flagenc = 1 if age25 == 1
replace flagenc = 1 if age26 == 1
replace flagenc = 1 if age27 == 1
replace flagenc = 1 if age28 == 1
replace flagenc = 1 if age29 == 1
replace flagenc = 1 if age30 == 1
replace flagenc = 1 if age31 == 1
replace flagenc = 1 if age32 == 1

gen flageny = age18
replace flageny = 1 if age19 == 1
replace flageny = 1 if age20 == 1
replace flageny = 1 if age21 == 1
replace flageny = 1 if age22 == 1
replace flageny = 1 if age23 == 1
replace flageny = 1 if age24 == 1
replace flageny = 1 if age25 == 1
replace flageny = 1 if age26 == 1
replace flageny = 1 if age27 == 1
replace flageny = 1 if age28 == 1
replace flageny = 1 if age29 == 1
replace flageny = 1 if age30 == 1
replace flageny = 1 if age31 == 1
replace flageny = 1 if age32 == 1
replace flageny = 1 if age33 == 1
replace flageny = 1 if age34 == 1
replace flageny = 1 if age35 == 1
replace flageny = 1 if age36 == 1
replace flageny = 1 if age37 == 1
replace flageny = 1 if age38 == 1
replace flageny = 1 if age39 == 1
replace flageny = 1 if age40 == 1
replace flageny = 1 if age41 == 1

gen flagenh = age18
replace flagenh = 1 if age19 == 1
replace flagenh = 1 if age20 == 1
replace flagenh = 1 if age21 == 1
replace flagenh = 1 if age22 == 1
replace flagenh = 1 if age23 == 1
replace flagenh = 1 if age24 == 1
replace flagenh = 1 if age25 == 1
replace flagenh = 1 if age26 == 1
replace flagenh = 1 if age27 == 1
replace flagenh = 1 if age28 == 1
replace flagenh = 1 if age29 == 1
replace flagenh = 1 if age30 == 1
replace flagenh = 1 if age31 == 1
replace flagenh = 1 if age32 == 1
replace flagenh = 1 if age33 == 1
replace flagenh = 1 if age34 == 1
replace flagenh = 1 if age35 == 1
replace flagenh = 1 if age36 == 1
replace flagenh = 1 if age37 == 1
replace flagenh = 1 if age38 == 1
replace flagenh = 1 if age39 == 1
replace flagenh = 1 if age40 == 1
replace flagenh = 1 if age41 == 1
replace flagenh = 1 if age42 == 1
replace flagenh = 1 if age43 == 1
replace flagenh = 1 if age44 == 1

//gen flageall, financial literacy for all mandated states
gen flageall = flageid
replace flageall = 1 if flageut == 1
replace flageall = 1 if flageaz == 1
replace flageall = 1 if flageco == 1
replace flageall = 1 if flagetx == 1
replace flageall = 1 if flageia == 1
replace flageall = 1 if flagemo == 1
replace flageall = 1 if flagear == 1
replace flageall = 1 if flagela == 1
replace flageall = 1 if flageil == 1
replace flageall = 1 if flagemi == 1
replace flageall = 1 if flagetn == 1
replace flageall = 1 if flagega == 1
replace flageall = 1 if flagesc == 1
replace flageall = 1 if flagenc == 1
replace flageall = 1 if flageny == 1
replace flageall = 1 if flagenh == 1

//interaction for flageall
gen intall = finlitstate * flageall

//create interaction for fixed effects
gen intid = finlitstate * flageid
gen intwy = finlitstate * flagewy
gen intut = finlitstate * flageut
gen intaz = finlitstate * flageaz
gen intco = finlitstate * flageco
gen intks = finlitstate * flageks
gen inttx = finlitstate * flagetx
gen intia = finlitstate * flageia
gen intmo = finlitstate * flagemo
gen intar = finlitstate * flagear
gen intla = finlitstate * flagela
gen intil = finlitstate * flageil
gen intmi = finlitstate * flagemi
gen inttn = finlitstate * flagetn
gen intga = finlitstate * flagega
gen intsc = finlitstate * flagesc
gen intnc = finlitstate * flagenc
gen intny = finlitstate * flageny
gen intnh = finlitstate * flagenh

/* Done! */
beep
beep
beep
