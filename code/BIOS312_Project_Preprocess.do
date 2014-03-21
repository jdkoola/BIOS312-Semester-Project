import delimited "/Users/johndoe/Dropbox/My Documents/DBMI Masters/Spring 2014/BIOS 312/Project/ivfedata-2013.csv"
summ
scatter ventdaysunit ventdayshosp
scatter ventdaysunit ventdayshosp
gen venfreediff = unitlos - ventdaysunit
summ venfreediff
scatter venfreediff ventfreeunit
gen hospfreediff = hosplos - ventdayshosp
scatter hsopfreediff ventfreeunit
scatter hospfreediff ventfreeunit
scatter avgexp maxexp
scatter avgexp maxexp
scatter avgexp maxexp, mlabel(_n)
scatter avgexp maxexp, mlabel(_N)
list if missing
missing
list if avgexp=.
list, if avgexp=.
list *, if avgexp=.
summary
summ
replace avgexp = . in 1
replace avgexp = . in 1
summ
encode gender, generate(f_gender)
encode race, generate(f_race)
sw reg hosplos avgexp maxexp age f_gender f_race bmi
sw reg hosplos avgexp maxexp age f_gender f_race bmi, pe(0.1)
sw reg hosplos avgexp maxexp age f_gender f_race bmi avgexp#age avgexp#f_race avgexp#f_gender avgexp#bmi, pe(0.1)
regress hosplos avgexp f_race bmi avgexp#f_race avgexp#bmi f_race#bmi
regress hosplos avgexp i.f_race bmi avgexp#f_race avgexp#bmi f_race#bmi
regress hosplos avgexp i.f_race bmi avgexp#i.f_race avgexp#bmi i.f_race#bmi
regress hosplos avgexp i.f_race bmi 
regress hosplos avgexp i.f_race bmi avgexp#i.f_race
regress hosplos avgexp i.f_race bmi avgexp#bmi
regress hosplos avgexp i.f_race bmi 
regress hosplos avgexp i.f_race bmi i.f_race#bmi
replace avgexp = .12341234 in 1
regress hosplos avgexp i.f_race bmi 
regress hosplos avgexp i.f_race bmi avgexp#i.f_race
regress hosplos avgexp i.f_race bmi avgexp#bmi
regress hosplos avgexp bmi avgexp#bmi
regress hosplos avgexp bmi c.avgexp#c.bmi
regress hosplos avgexp i.f_race bmi c.avgexp#i.f_race c.avgexp#c.bmi i.f_race#c.bmi
regress hosplos avgexp i.f_race bmi 
regress hosplos avgexp-bmi
regress hosplos avgexp maxexp age gender race bmi
regress hosplos avgexp maxexp age f_gender f_race bmi
regress hosplos avgexp maxexp age f_gender f_race bmi apache2
regress hosplos avgexp maxexp age f_gender f_race bmi apache2 glucose
vif
sw reg hosplos avgexp maxexp age f_gender f_race bmi apache2 glucose, pe(0.1)
sw reg hosplos avgexp maxexp age f_gender f_race  apache2 glucose bmi, pe(0.1)
drop hospfreedif
gen hospfreediff=hosplos-ventdayshosp
scatter hospfreediff
hist hospfreediff
