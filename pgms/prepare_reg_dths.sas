proc sort data=work.covid19_dths out=three;
by fips;
where fips < 80000;
run;
data combined2;
merge one(in=a) three(in=b);
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
create table sttabdths as
select censregname, stateabb, &varlist
from combined2
group by censregname, stateabb;

create table cbsaregdthtab as
select censregname, cbsacod, &varlist
from combined2
where  censregname is not null & cbsacod is not null
group by censregname, cbsacod;


create table econdepregdthtab as
select censregname, EconDepTypoCode2015, &varlist
/* , SUM('3/6/20'n) as '4/6/20'n, */
from combined2
where  censregname is not null & EconDepTypoCode2015 is not null & cbsacod ne "1"
group by censregname, EconDepTypoCode2015;

create table cbsadthtab as
select cbsacod, SUM(pop2018) as cbsa_pop18, &varlist


from combined2
where  cbsacod is not null
group by cbsacod;


create table econdepdthtab as
select EconDepTypoCode2015, SUM(pop2018) as econdep_pop18, &varlist
/* , SUM('3/6/20'n) as '4/6/20'n, */
from combined2
where  EconDepTypoCode2015 is not null
group by EconDepTypoCode2015;

quit;
run;