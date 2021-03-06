Data work.TSTREGSUMOUT(drop=datel);
retain dates;
set work.tcbsaregsum;
Dates = input(datel, MMDDYY12.);
weeks = week(dates);
inc_rates = (cases1/cbsa_reg_pop)*1000;
run;
/* -------------------------------------------------------------------
   Sort data set WORK.TSTATESUM
   ------------------------------------------------------------------- */
PROC SORT
	DATA=WORK.TSTREGSUMOUT(KEEP=dates inc_rates cbsacod CensRegName)
	OUT=WORK.CBSARegIncidenceRates
	;
	BY CensRegName dates;
RUN;
%_sas_pushchartsize(1280,760);
SYMBOL1
	INTERPOL=JOIN
	HEIGHT=10pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL1
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL2
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL3
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL4
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL5
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL6
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL7
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL8
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL9
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL10
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL11
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL12
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL13
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL14
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL15
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL16
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL17
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL18
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL19
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
SYMBOL20
	INTERPOL=JOIN
	HEIGHT=8pt
	VALUE=NONE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
Legend1
	FRAME
	;
Axis1
	STYLE=1
	WIDTH=1
/*	ORDER=(0 5000 10000 15000 20000 25000 30000 35000 40000 45000 50000 55000 60000 65000 
			70000 75000 80000 85000 90000 95000 100000)*/
	MINOR=NONE
	LABEL=( HEIGHT=8pt   "Incidence rate")
	VALUE=(HEIGHT=8pt )


;
Axis2
	STYLE=1
	WIDTH=1
	MINOR=NONE
	LABEL=( HEIGHT=8pt)
	VALUE=(HEIGHT=8pt )


;
TITLE;
TITLE1 "Daily Cumulative Incidence Rates by Region and CBSA Status";
FOOTNOTE;
PROC GPLOT DATA = WORK.CBSARegIncidenceRates
 NOCACHE ;
PLOT inc_rates * dates 	 =cbsacod
 /
 	VAXIS=AXIS1

	HAXIS=AXIS2

FRAME	LEGEND=LEGEND1
;
	BY CensRegName;
	format cbsacod $cbfmt. dates mmddyy8.;
/* -------------------------------------------------------------------
   End of task code
   ------------------------------------------------------------------- */

RUN; QUIT;
