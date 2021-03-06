Data work.TSTATESUMOUT(drop=datel);
retain dates;
set work.TSTATESUM;
Dates = input(datel, MMDDYY12.);
weeks = week(dates);
run;

%_eg_conditional_dropds(WORK.SORTTempTableSorted);
/* -------------------------------------------------------------------
   Sort data set WORK.TSTATESUM
   ------------------------------------------------------------------- */
PROC SORT
	DATA=WORK.TSTATESUMOUT(KEEP=dates Cases1 StateAbb CensRegName)
	OUT=WORK.SORTTempTableSorted
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
	ORDER=(0 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000 11000 12000 13000 14000 15000 16000 17000 18000 19000 20000 21000 22000 23000 24000 25000 26000 27000 28000 29000 30000)
	MINOR=NONE
	LABEL=( HEIGHT=8pt   "Cumulative cases")
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
TITLE1 "COVID-19 Cumulative Incidence Plot";
FOOTNOTE;
PROC GPLOT DATA = WORK.SORTTempTableSorted 
 NOCACHE ;
PLOT Cases1 * dates 	 =StateAbb
 /
 	VAXIS=AXIS1

	HAXIS=AXIS2

FRAME	LEGEND=LEGEND1
;
format dates mmddyy8.;
	BY CensRegName;
/* -------------------------------------------------------------------
   End of task code
   ------------------------------------------------------------------- */
RUN; QUIT;

