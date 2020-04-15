proc format;
value $cbfmt
"0" = "Non-metropolitan"
"1" = "Metropolitan"
"2" = "Micropolitan";
value $ecdepfmt
"0" = "Nonspecialized"
"1" = "Farming-dependent"
"2" = "Mining-dependent"
"3" = "Manufacturing-dependent"
"4" = "Federal/State government-dependent"
"5" = "Recreation";
run;
data one(drop=fipsc f00012 rename=(f1198418=pop2018));
set work.query_for_ahrf;
fips = fipsc*1;
if stateabb = "AK" then fips = 2000+f00012;
label CBSACod = "CBSA Indicator";
run;

proc sort;
by fips;
run;
proc sort data=covid_conf out=two;
by fips;
where fips < 80000;
run;
data combined;
merge one(in=a) two(in=b);
by fips;
if a;
run;
data tmp;
set work.covid_conf(drop=admin2 combined_key country_region fips lat long_ province_state
	uid code3 iso2 iso3);
	run;
proc contents data=tmp noprint out=vlist;   run;
proc sql noprint;
select "sum('"||left(trim(name)) || "'n) as "|| "'" || left(trim(name)) || "'n" into :varlist separated by ', ' 
from vlist;   
quit; 
%let cntlist = &sqlobs; 

proc sql;
create table sttab as
select censregname, stateabb, &varlist
from combined
group by censregname, stateabb;


create table cbsaregtab as
select censregname, cbsacod, &varlist
from combined
where  censregname is not null & cbsacod is not null
group by censregname, cbsacod;


create table econdepregtab as
select censregname, EconDepTypoCode2015, SUM(pop2018) as reg_econdep_pop18, &varlist
from combined
where  censregname is not null & EconDepTypoCode2015 is not null & cbsacod ne "1"
group by censregname, EconDepTypoCode2015;

create table cbsatab as
select cbsacod, SUM(pop2018) as cbsa_pop18, &varlist

from combined
where  cbsacod is not null
group by cbsacod;


create table econdeptab as
select EconDepTypoCode2015, &varlist
from combined
where  EconDepTypoCode2015 is not null
group by EconDepTypoCode2015;

quit;
run;



