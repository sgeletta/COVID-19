/* -------------------------------------------------------------------
   Sort data set Local:WORK.STTAB
   ------------------------------------------------------------------- */
data tmp;
set work.covid_conf(drop=admin2 combined_key country_region fips lat long_ province_state
	uid code3 iso2 iso3);
	run;
proc contents data=tmp noprint out=vlist;   run;

proc sql noprint;
select 'T."'||left(trim(name)) || '"n' into :vlist separated by ', ' 
from vlist;   
quit; 
%let cntlist = &sqlobs; 

proc sql noprint;
select '"'||left(trim(name)) || '"n' into :tlist separated by ' ' 
from vlist;   
quit; 
%let cntlist = &sqlobs; 
/* -------------------------------------------------------------------
   Sort data set Local:WORK.STTAB
   ------------------------------------------------------------------- */
/** States by Region */
PROC SQL;
	CREATE VIEW WORK.stsorteddths AS
		SELECT &vlist, T.censregname, T.StateAbb
	FROM WORK.STTABDTHS as T
	where censregname is not null
;
QUIT;
PROC TRANSPOSE DATA=WORK.stsorteddths
	OUT=WORK.TSTATEDTHSUM(LABEL="Transposed State Summaries")
	NAME=Datel
	PREFIX=Cases
	LABEL=Label
;
	BY censregname StateAbb;
	VAR &tlist;
run;
/*** CBSA By Region **/
PROC SQL;
	CREATE VIEW WORK.cbsaregsorteddths AS
		SELECT &vlist, T.censregname, T.cbsacod
	FROM WORK.CBSAREGdthTAB as T
;
QUIT;
PROC TRANSPOSE DATA=WORK.cbsaregsorteddths
	OUT=WORK.TCBSAREGDTHSUM(LABEL="Transposed CBSA Region Summaries")
	NAME=Datel
	PREFIX=Cases
	LABEL=Label
;
	BY censregname cbsacod;
	VAR &tlist;
RUN; 
/*** CBSA **/
PROC SQL;
	CREATE VIEW WORK.cbsasorteddths AS
		SELECT &vlist, T.cbsacod
	FROM WORK.CBSADTHTAB as T
;
QUIT;
PROC TRANSPOSE DATA=WORK.cbsasorteddths
	OUT=WORK.TCBSADTHSUM(LABEL="Transposed CBSA Summaries")
	NAME=Datel
	PREFIX=Cases
	LABEL=Label
;
	BY cbsacod;
	VAR &tlist;
RUN;

/*** EconDepTypoCode2015 **/
PROC SQL;
	CREATE VIEW WORK.econdepsorteddths AS
		SELECT &vlist, T.EconDepTypoCode2015
	FROM WORK.ECONDEPDTHTAB as T
;
QUIT;
PROC TRANSPOSE DATA=WORK.econdepsorteddths
	OUT=WORK.TECONDEPDTHSUM(LABEL="Transposed CBSA Summaries")
	NAME=Datel
	PREFIX=Cases
	LABEL=Label
;
	BY EconDepTypoCode2015;
	VAR &tlist;
RUN;

QUIT;

