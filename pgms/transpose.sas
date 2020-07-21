/* -------------------------------------------------------------------
   Code generated by SAS Task

   Generated on: Sunday, April 5, 2020 at 1:26:27 PM
   By task: Transpose

   Input Data: Local:WORK.STTAB
   Server:  Local
   ------------------------------------------------------------------- */

%_eg_conditional_dropds(WORK.TRNSTRANSPOSED_0002,
		WORK.SORTTempTableSorted);
/* -------------------------------------------------------------------
   Sort data set Local:WORK.STTAB
   ------------------------------------------------------------------- */

PROC SQL;
	CREATE VIEW WORK.stsorted AS
		SELECT T."1/22/20"n, T."1/23/20"n, T."1/24/20"n, T."1/25/20"n, T."1/26/20"n, T."1/27/20"n, T."1/28/20"n, T."1/29/20"n, T."1/30/20"n, T."1/31/20"n, T."2/1/20"n, T."2/2/20"n, T."2/3/20"n, T."2/4/20"n, T."2/5/20"n, T."2/6/20"n, T."2/7/20"n
		     , T."2/8/20"n, T."2/9/20"n, T."2/10/20"n, T."2/11/20"n, T."2/12/20"n, T."2/13/20"n, T."2/14/20"n, T."2/15/20"n, T."2/16/20"n, T."2/17/20"n, T."2/18/20"n, T."2/19/20"n, T."2/20/20"n, T."2/21/20"n, T."2/22/20"n, T."2/23/20"n
		     , T."2/24/20"n, T."2/25/20"n, T."2/26/20"n, T."2/27/20"n, T."2/28/20"n, T."2/29/20"n, T."3/1/20"n, T."3/2/20"n, T."3/3/20"n, T."3/4/20"n, T."3/5/20"n, T."3/6/20"n, T."3/7/20"n, T."3/8/20"n, T."3/9/20"n, T."3/10/20"n
		     , T."3/11/20"n, T."3/12/20"n, T."3/13/20"n, T."3/14/20"n, T."3/15/20"n, T."3/16/20"n, T."3/17/20"n, T."3/18/20"n, T."3/19/20"n, T."3/20/20"n, T."3/21/20"n, T."3/22/20"n, T."3/23/20"n, T."3/24/20"n, T."3/25/20"n, T."3/26/20"n
		     , T."3/27/20"n, T."3/28/20"n, T."3/29/20"n, T."3/30/20"n, T."3/31/20"n, T."4/1/20"n, T."4/2/20"n, T."4/3/20"n, T."4/4/20"n
			 , T."4/5/20"n, T."4/6/20"n, T."4/7/20"n, T."4/8/20"n, T."4/9/20"n
			 , T."4/10/20"n, T."4/11/20"n, T.censregname, T.StateAbb
	FROM WORK.STTAB as T
	where censregname is not null
;
QUIT;
PROC TRANSPOSE DATA=WORK.stsorted
	OUT=WORK.TSTATESUM(LABEL="Transposed State Summaries")
	NAME=Datel
	PREFIX=Cases
	LABEL=Label
;
	BY censregname StateAbb;
	VAR "1/22/20"n "1/23/20"n "1/24/20"n "1/25/20"n "1/26/20"n "1/27/20"n "1/28/20"n "1/29/20"n "1/30/20"n "1/31/20"n "2/1/20"n "2/2/20"n "2/3/20"n "2/4/20"n "2/5/20"n "2/6/20"n "2/7/20"n "2/8/20"n "2/9/20"n "2/10/20"n "2/11/20"n "2/12/20"n "2/13/20"n
	  "2/14/20"n "2/15/20"n "2/16/20"n "2/17/20"n "2/18/20"n "2/19/20"n "2/20/20"n "2/21/20"n "2/22/20"n "2/23/20"n "2/24/20"n "2/25/20"n "2/26/20"n "2/27/20"n "2/28/20"n "2/29/20"n "3/1/20"n "3/2/20"n "3/3/20"n "3/4/20"n "3/5/20"n "3/6/20"n "3/7/20"n
	  "3/8/20"n "3/9/20"n "3/10/20"n "3/11/20"n "3/12/20"n "3/13/20"n "3/14/20"n "3/15/20"n "3/16/20"n "3/17/20"n "3/18/20"n "3/19/20"n "3/20/20"n "3/21/20"n "3/22/20"n "3/23/20"n "3/24/20"n "3/25/20"n "3/26/20"n "3/27/20"n "3/28/20"n "3/29/20"n
	  "3/30/20"n "3/31/20"n "4/1/20"n "4/2/20"n "4/3/20"n "4/4/20"n "4/5/20"n "4/6/20"n "4/7/20"n "4/8/20"n "4/9/20"n "4/10/20"n "4/11/20"n;
run;

PROC SQL;
	CREATE VIEW WORK.cbsasorted AS
		SELECT T."1/22/20"n, T."1/23/20"n, T."1/24/20"n, T."1/25/20"n, T."1/26/20"n, T."1/27/20"n, T."1/28/20"n, T."1/29/20"n, T."1/30/20"n, T."1/31/20"n, T."2/1/20"n, T."2/2/20"n, T."2/3/20"n, T."2/4/20"n, T."2/5/20"n, T."2/6/20"n, T."2/7/20"n
		     , T."2/8/20"n, T."2/9/20"n, T."2/10/20"n, T."2/11/20"n, T."2/12/20"n, T."2/13/20"n, T."2/14/20"n, T."2/15/20"n, T."2/16/20"n, T."2/17/20"n, T."2/18/20"n, T."2/19/20"n, T."2/20/20"n, T."2/21/20"n, T."2/22/20"n, T."2/23/20"n
		     , T."2/24/20"n, T."2/25/20"n, T."2/26/20"n, T."2/27/20"n, T."2/28/20"n, T."2/29/20"n, T."3/1/20"n, T."3/2/20"n, T."3/3/20"n, T."3/4/20"n, T."3/5/20"n, T."3/6/20"n, T."3/7/20"n, T."3/8/20"n, T."3/9/20"n, T."3/10/20"n
		     , T."3/11/20"n, T."3/12/20"n, T."3/13/20"n, T."3/14/20"n, T."3/15/20"n, T."3/16/20"n, T."3/17/20"n, T."3/18/20"n, T."3/19/20"n, T."3/20/20"n, T."3/21/20"n, T."3/22/20"n, T."3/23/20"n, T."3/24/20"n, T."3/25/20"n, T."3/26/20"n
		     , T."3/27/20"n, T."3/28/20"n, T."3/29/20"n, T."3/30/20"n, T."3/31/20"n, T."4/1/20"n, T."4/2/20"n, T."4/3/20"n, T."4/4/20"n
			 , T."4/5/20"n, T."4/6/20"n, T."4/7/20"n, T."4/8/20"n, T."4/9/20"n
			 , T."4/10/20"n, T."4/11/20"n, T.censregname, T.cbsacod
	FROM WORK.CBSATAB as T
;
QUIT;
PROC TRANSPOSE DATA=WORK.cbsasorted
	OUT=WORK.TCBSASUM(LABEL="Transposed CBSA Summaries")
	NAME=Datel
	PREFIX=Cases
	LABEL=Label
;
	BY censregname cbsacod;
	VAR "1/22/20"n "1/23/20"n "1/24/20"n "1/25/20"n "1/26/20"n "1/27/20"n "1/28/20"n "1/29/20"n "1/30/20"n "1/31/20"n "2/1/20"n "2/2/20"n "2/3/20"n "2/4/20"n "2/5/20"n "2/6/20"n "2/7/20"n "2/8/20"n "2/9/20"n "2/10/20"n "2/11/20"n "2/12/20"n "2/13/20"n
	  "2/14/20"n "2/15/20"n "2/16/20"n "2/17/20"n "2/18/20"n "2/19/20"n "2/20/20"n "2/21/20"n "2/22/20"n "2/23/20"n "2/24/20"n "2/25/20"n "2/26/20"n "2/27/20"n "2/28/20"n "2/29/20"n "3/1/20"n "3/2/20"n "3/3/20"n "3/4/20"n "3/5/20"n "3/6/20"n "3/7/20"n
	  "3/8/20"n "3/9/20"n "3/10/20"n "3/11/20"n "3/12/20"n "3/13/20"n "3/14/20"n "3/15/20"n "3/16/20"n "3/17/20"n "3/18/20"n "3/19/20"n "3/20/20"n "3/21/20"n "3/22/20"n "3/23/20"n "3/24/20"n "3/25/20"n "3/26/20"n "3/27/20"n "3/28/20"n "3/29/20"n
	  "3/30/20"n "3/31/20"n "4/1/20"n "4/2/20"n "4/3/20"n "4/4/20"n "4/5/20"n "4/6/20"n "4/7/20"n "4/8/20"n "4/9/20"n "4/10/20"n "4/11/20"n;
run;
/*
PROC SQL;
	CREATE VIEW WORK.regcbsasorted AS
		SELECT T."1/22/20"n, T."1/23/20"n, T."1/24/20"n, T."1/25/20"n, T."1/26/20"n, T."1/27/20"n, T."1/28/20"n, T."1/29/20"n, T."1/30/20"n, T."1/31/20"n, T."2/1/20"n, T."2/2/20"n, T."2/3/20"n, T."2/4/20"n, T."2/5/20"n, T."2/6/20"n, T."2/7/20"n
		     , T."2/8/20"n, T."2/9/20"n, T."2/10/20"n, T."2/11/20"n, T."2/12/20"n, T."2/13/20"n, T."2/14/20"n, T."2/15/20"n, T."2/16/20"n, T."2/17/20"n, T."2/18/20"n, T."2/19/20"n, T."2/20/20"n, T."2/21/20"n, T."2/22/20"n, T."2/23/20"n
		     , T."2/24/20"n, T."2/25/20"n, T."2/26/20"n, T."2/27/20"n, T."2/28/20"n, T."2/29/20"n, T."3/1/20"n, T."3/2/20"n, T."3/3/20"n, T."3/4/20"n, T."3/5/20"n, T."3/6/20"n, T."3/7/20"n, T."3/8/20"n, T."3/9/20"n, T."3/10/20"n
		     , T."3/11/20"n, T."3/12/20"n, T."3/13/20"n, T."3/14/20"n, T."3/15/20"n, T."3/16/20"n, T."3/17/20"n, T."3/18/20"n, T."3/19/20"n, T."3/20/20"n, T."3/21/20"n, T."3/22/20"n, T."3/23/20"n, T."3/24/20"n, T."3/25/20"n, T."3/26/20"n
		     , T."3/27/20"n, T."3/28/20"n, T."3/29/20"n, T."3/30/20"n, T."3/31/20"n, T."4/1/20"n, T."4/2/20"n, T."4/3/20"n, T."4/4/20"n
			 , T."4/5/20"n, T."4/6/20"n, T."4/7/20"n, T."4/8/20"n, T."4/9/20"n
			 , T."4/10/20"n, T."4/11/20"n, T.censregname, T.cbsacod
	FROM WORK.regioncbsatab as T
;
QUIT;
PROC TRANSPOSE DATA=WORK.regioncbsatab
	OUT=WORK.TREGCBSASUM(LABEL="Transposed Region CBSA Summaries")
	NAME=Datel
	LABEL=Label
;
	ID CensRegName CBSACod;
	VAR "1/22/20"n "1/23/20"n "1/24/20"n "1/25/20"n "1/26/20"n "1/27/20"n "1/28/20"n "1/29/20"n "1/30/20"n "1/31/20"n "2/1/20"n "2/2/20"n "2/3/20"n "2/4/20"n "2/5/20"n "2/6/20"n "2/7/20"n "2/8/20"n "2/9/20"n "2/10/20"n "2/11/20"n "2/12/20"n "2/13/20"n
	  "2/14/20"n "2/15/20"n "2/16/20"n "2/17/20"n "2/18/20"n "2/19/20"n "2/20/20"n "2/21/20"n "2/22/20"n "2/23/20"n "2/24/20"n "2/25/20"n "2/26/20"n "2/27/20"n "2/28/20"n "2/29/20"n "3/1/20"n "3/2/20"n "3/3/20"n "3/4/20"n "3/5/20"n "3/6/20"n "3/7/20"n
	  "3/8/20"n "3/9/20"n "3/10/20"n "3/11/20"n "3/12/20"n "3/13/20"n "3/14/20"n "3/15/20"n "3/16/20"n "3/17/20"n "3/18/20"n "3/19/20"n "3/20/20"n "3/21/20"n "3/22/20"n "3/23/20"n "3/24/20"n "3/25/20"n "3/26/20"n "3/27/20"n "3/28/20"n "3/29/20"n
	  "3/30/20"n "3/31/20"n "4/1/20"n "4/2/20"n "4/3/20"n "4/4/20"n "4/5/20"n "4/6/20"n "4/7/20"n "4/8/20"n "4/9/20"n "4/10/20"n "4/11/20"n;
/* -------------------------------------------------------------------
   End of task code
   ------------------------------------------------------------------- */
RUN; QUIT;
