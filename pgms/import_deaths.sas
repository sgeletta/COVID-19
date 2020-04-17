DATA WORK.covid19_dths;
    LENGTH
        UID                8
        iso2             $ 2
        iso3             $ 3
        code3              8
        FIPS               8
        Admin2           $ 21
        Province_State   $ 24
        Country_Region   $ 2
        Lat                8
        Long_              8
        Combined_Key     $ 44
        Population         8
        '1/22/20'n         8
        '1/23/20'n         8
        '1/24/20'n         8
        '1/25/20'n         8
        '1/26/20'n         8
        '1/27/20'n         8
        '1/28/20'n         8
        '1/29/20'n         8
        '1/30/20'n         8
        '1/31/20'n         8
        '2/1/20'n          8
        '2/2/20'n          8
        '2/3/20'n          8
        '2/4/20'n          8
        '2/5/20'n          8
        '2/6/20'n          8
        '2/7/20'n          8
        '2/8/20'n          8
        '2/9/20'n          8
        '2/10/20'n         8
        '2/11/20'n         8
        '2/12/20'n         8
        '2/13/20'n         8
        '2/14/20'n         8
        '2/15/20'n         8
        '2/16/20'n         8
        '2/17/20'n         8
        '2/18/20'n         8
        '2/19/20'n         8
        '2/20/20'n         8
        '2/21/20'n         8
        '2/22/20'n         8
        '2/23/20'n         8
        '2/24/20'n         8
        '2/25/20'n         8
        '2/26/20'n         8
        '2/27/20'n         8
        '2/28/20'n         8
        '2/29/20'n         8
        '3/1/20'n          8
        '3/2/20'n          8
        '3/3/20'n          8
        '3/4/20'n          8
        '3/5/20'n          8
        '3/6/20'n          8
        '3/7/20'n          8
        '3/8/20'n          8
        '3/9/20'n          8
        '3/10/20'n         8
        '3/11/20'n         8
        '3/12/20'n         8
        '3/13/20'n         8
        '3/14/20'n         8
        '3/15/20'n         8
        '3/16/20'n         8
        '3/17/20'n         8
        '3/18/20'n         8
        '3/19/20'n         8
        '3/20/20'n         8
        '3/21/20'n         8
        '3/22/20'n         8
        '3/23/20'n         8
        '3/24/20'n         8
        '3/25/20'n         8
        '3/26/20'n         8
        '3/27/20'n         8
        '3/28/20'n         8
        '3/29/20'n         8
        '3/30/20'n         8
        '3/31/20'n         8
        '4/1/20'n          8
        '4/2/20'n          8
        '4/3/20'n          8
        '4/4/20'n          8
        '4/5/20'n          8
        '4/6/20'n          8
        '4/7/20'n          8
        '4/8/20'n          8
        '4/9/20'n          8
        '4/10/20'n         8
        '4/11/20'n         8
        '4/12/20'n         8
        '4/13/20'n         8
        '4/14/20'n         8
        '4/15/20'n         8 ;
    FORMAT
        UID              BEST8.
        iso2             $CHAR2.
        iso3             $CHAR3.
        code3            BEST3.
        FIPS             BEST7.
        Admin2           $CHAR21.
        Province_State   $CHAR24.
        Country_Region   $CHAR2.
        Lat              BEST18.
        Long_            BEST19.
        Combined_Key     $CHAR44.
        Population       BEST8.
        '1/22/20'n       BEST1.
        '1/23/20'n       BEST1.
        '1/24/20'n       BEST1.
        '1/25/20'n       BEST1.
        '1/26/20'n       BEST1.
        '1/27/20'n       BEST1.
        '1/28/20'n       BEST1.
        '1/29/20'n       BEST1.
        '1/30/20'n       BEST1.
        '1/31/20'n       BEST1.
        '2/1/20'n        BEST1.
        '2/2/20'n        BEST1.
        '2/3/20'n        BEST1.
        '2/4/20'n        BEST1.
        '2/5/20'n        BEST1.
        '2/6/20'n        BEST1.
        '2/7/20'n        BEST1.
        '2/8/20'n        BEST1.
        '2/9/20'n        BEST1.
        '2/10/20'n       BEST1.
        '2/11/20'n       BEST1.
        '2/12/20'n       BEST1.
        '2/13/20'n       BEST1.
        '2/14/20'n       BEST1.
        '2/15/20'n       BEST1.
        '2/16/20'n       BEST1.
        '2/17/20'n       BEST1.
        '2/18/20'n       BEST1.
        '2/19/20'n       BEST1.
        '2/20/20'n       BEST1.
        '2/21/20'n       BEST1.
        '2/22/20'n       BEST1.
        '2/23/20'n       BEST1.
        '2/24/20'n       BEST1.
        '2/25/20'n       BEST1.
        '2/26/20'n       BEST1.
        '2/27/20'n       BEST1.
        '2/28/20'n       BEST1.
        '2/29/20'n       BEST1.
        '3/1/20'n        BEST1.
        '3/2/20'n        BEST1.
        '3/3/20'n        BEST1.
        '3/4/20'n        BEST1.
        '3/5/20'n        BEST2.
        '3/6/20'n        BEST2.
        '3/7/20'n        BEST2.
        '3/8/20'n        BEST2.
        '3/9/20'n        BEST2.
        '3/10/20'n       BEST2.
        '3/11/20'n       BEST2.
        '3/12/20'n       BEST2.
        '3/13/20'n       BEST2.
        '3/14/20'n       BEST2.
        '3/15/20'n       BEST2.
        '3/16/20'n       BEST2.
        '3/17/20'n       BEST2.
        '3/18/20'n       BEST2.
        '3/19/20'n       BEST2.
        '3/20/20'n       BEST2.
        '3/21/20'n       BEST2.
        '3/22/20'n       BEST2.
        '3/23/20'n       BEST2.
        '3/24/20'n       BEST3.
        '3/25/20'n       BEST3.
        '3/26/20'n       BEST3.
        '3/27/20'n       BEST3.
        '3/28/20'n       BEST3.
        '3/29/20'n       BEST3.
        '3/30/20'n       BEST3.
        '3/31/20'n       BEST4.
        '4/1/20'n        BEST4.
        '4/2/20'n        BEST4.
        '4/3/20'n        BEST4.
        '4/4/20'n        BEST4.
        '4/5/20'n        BEST4.
        '4/6/20'n        BEST4.
        '4/7/20'n        BEST4.
        '4/8/20'n        BEST4.
        '4/9/20'n        BEST4.
        '4/10/20'n       BEST4.
        '4/11/20'n       BEST4.
        '4/12/20'n       BEST4.
        '4/13/20'n       BEST4.
        '4/14/20'n       BEST4.
        '4/15/20'n       BEST4. ;
    INFORMAT
        UID              BEST8.
        iso2             $CHAR2.
        iso3             $CHAR3.
        code3            BEST3.
        FIPS             BEST7.
        Admin2           $CHAR21.
        Province_State   $CHAR24.
        Country_Region   $CHAR2.
        Lat              BEST18.
        Long_            BEST19.
        Combined_Key     $CHAR44.
        Population       BEST8.
        '1/22/20'n       BEST1.
        '1/23/20'n       BEST1.
        '1/24/20'n       BEST1.
        '1/25/20'n       BEST1.
        '1/26/20'n       BEST1.
        '1/27/20'n       BEST1.
        '1/28/20'n       BEST1.
        '1/29/20'n       BEST1.
        '1/30/20'n       BEST1.
        '1/31/20'n       BEST1.
        '2/1/20'n        BEST1.
        '2/2/20'n        BEST1.
        '2/3/20'n        BEST1.
        '2/4/20'n        BEST1.
        '2/5/20'n        BEST1.
        '2/6/20'n        BEST1.
        '2/7/20'n        BEST1.
        '2/8/20'n        BEST1.
        '2/9/20'n        BEST1.
        '2/10/20'n       BEST1.
        '2/11/20'n       BEST1.
        '2/12/20'n       BEST1.
        '2/13/20'n       BEST1.
        '2/14/20'n       BEST1.
        '2/15/20'n       BEST1.
        '2/16/20'n       BEST1.
        '2/17/20'n       BEST1.
        '2/18/20'n       BEST1.
        '2/19/20'n       BEST1.
        '2/20/20'n       BEST1.
        '2/21/20'n       BEST1.
        '2/22/20'n       BEST1.
        '2/23/20'n       BEST1.
        '2/24/20'n       BEST1.
        '2/25/20'n       BEST1.
        '2/26/20'n       BEST1.
        '2/27/20'n       BEST1.
        '2/28/20'n       BEST1.
        '2/29/20'n       BEST1.
        '3/1/20'n        BEST1.
        '3/2/20'n        BEST1.
        '3/3/20'n        BEST1.
        '3/4/20'n        BEST1.
        '3/5/20'n        BEST2.
        '3/6/20'n        BEST2.
        '3/7/20'n        BEST2.
        '3/8/20'n        BEST2.
        '3/9/20'n        BEST2.
        '3/10/20'n       BEST2.
        '3/11/20'n       BEST2.
        '3/12/20'n       BEST2.
        '3/13/20'n       BEST2.
        '3/14/20'n       BEST2.
        '3/15/20'n       BEST2.
        '3/16/20'n       BEST2.
        '3/17/20'n       BEST2.
        '3/18/20'n       BEST2.
        '3/19/20'n       BEST2.
        '3/20/20'n       BEST2.
        '3/21/20'n       BEST2.
        '3/22/20'n       BEST2.
        '3/23/20'n       BEST2.
        '3/24/20'n       BEST3.
        '3/25/20'n       BEST3.
        '3/26/20'n       BEST3.
        '3/27/20'n       BEST3.
        '3/28/20'n       BEST3.
        '3/29/20'n       BEST3.
        '3/30/20'n       BEST3.
        '3/31/20'n       BEST4.
        '4/1/20'n        BEST4.
        '4/2/20'n        BEST4.
        '4/3/20'n        BEST4.
        '4/4/20'n        BEST4.
        '4/5/20'n        BEST4.
        '4/6/20'n        BEST4.
        '4/7/20'n        BEST4.
        '4/8/20'n        BEST4.
        '4/9/20'n        BEST4.
        '4/10/20'n       BEST4.
        '4/11/20'n       BEST4.
        '4/12/20'n       BEST4.
        '4/13/20'n       BEST4.
        '4/14/20'n       BEST4.
        '4/15/20'n       BEST4. ;
    INFILE 'C:\Users\Simon\Documents\GitHub\COVID-19\csse_covid_19_data\csse_covid_19_time_series\time_series_covid19_deaths_US.csv'
        LRECL=32767
        FIRSTOBS=2
        ENCODING="WLATIN1"
        DLM='2c'x
        MISSOVER
        DSD ;
    INPUT
        UID              : ?? BEST8.
        iso2             : $CHAR2.
        iso3             : $CHAR3.
        code3            : ?? BEST3.
        FIPS             : ?? COMMA7.
        Admin2           : $CHAR21.
        Province_State   : $CHAR24.
        Country_Region   : $CHAR2.
        Lat              : ?? COMMA18.
        Long_            : ?? COMMA19.
        Combined_Key     : $CHAR44.
        Population       : ?? BEST8.
        '1/22/20'n       : ?? BEST1.
        '1/23/20'n       : ?? BEST1.
        '1/24/20'n       : ?? BEST1.
        '1/25/20'n       : ?? BEST1.
        '1/26/20'n       : ?? BEST1.
        '1/27/20'n       : ?? BEST1.
        '1/28/20'n       : ?? BEST1.
        '1/29/20'n       : ?? BEST1.
        '1/30/20'n       : ?? BEST1.
        '1/31/20'n       : ?? BEST1.
        '2/1/20'n        : ?? BEST1.
        '2/2/20'n        : ?? BEST1.
        '2/3/20'n        : ?? BEST1.
        '2/4/20'n        : ?? BEST1.
        '2/5/20'n        : ?? BEST1.
        '2/6/20'n        : ?? BEST1.
        '2/7/20'n        : ?? BEST1.
        '2/8/20'n        : ?? BEST1.
        '2/9/20'n        : ?? BEST1.
        '2/10/20'n       : ?? BEST1.
        '2/11/20'n       : ?? BEST1.
        '2/12/20'n       : ?? BEST1.
        '2/13/20'n       : ?? BEST1.
        '2/14/20'n       : ?? BEST1.
        '2/15/20'n       : ?? BEST1.
        '2/16/20'n       : ?? BEST1.
        '2/17/20'n       : ?? BEST1.
        '2/18/20'n       : ?? BEST1.
        '2/19/20'n       : ?? BEST1.
        '2/20/20'n       : ?? BEST1.
        '2/21/20'n       : ?? BEST1.
        '2/22/20'n       : ?? BEST1.
        '2/23/20'n       : ?? BEST1.
        '2/24/20'n       : ?? BEST1.
        '2/25/20'n       : ?? BEST1.
        '2/26/20'n       : ?? BEST1.
        '2/27/20'n       : ?? BEST1.
        '2/28/20'n       : ?? BEST1.
        '2/29/20'n       : ?? BEST1.
        '3/1/20'n        : ?? BEST1.
        '3/2/20'n        : ?? BEST1.
        '3/3/20'n        : ?? BEST1.
        '3/4/20'n        : ?? BEST1.
        '3/5/20'n        : ?? BEST2.
        '3/6/20'n        : ?? BEST2.
        '3/7/20'n        : ?? BEST2.
        '3/8/20'n        : ?? BEST2.
        '3/9/20'n        : ?? BEST2.
        '3/10/20'n       : ?? BEST2.
        '3/11/20'n       : ?? BEST2.
        '3/12/20'n       : ?? BEST2.
        '3/13/20'n       : ?? BEST2.
        '3/14/20'n       : ?? BEST2.
        '3/15/20'n       : ?? BEST2.
        '3/16/20'n       : ?? BEST2.
        '3/17/20'n       : ?? BEST2.
        '3/18/20'n       : ?? BEST2.
        '3/19/20'n       : ?? BEST2.
        '3/20/20'n       : ?? BEST2.
        '3/21/20'n       : ?? BEST2.
        '3/22/20'n       : ?? BEST2.
        '3/23/20'n       : ?? BEST2.
        '3/24/20'n       : ?? BEST3.
        '3/25/20'n       : ?? BEST3.
        '3/26/20'n       : ?? BEST3.
        '3/27/20'n       : ?? BEST3.
        '3/28/20'n       : ?? BEST3.
        '3/29/20'n       : ?? BEST3.
        '3/30/20'n       : ?? BEST3.
        '3/31/20'n       : ?? BEST4.
        '4/1/20'n        : ?? BEST4.
        '4/2/20'n        : ?? BEST4.
        '4/3/20'n        : ?? BEST4.
        '4/4/20'n        : ?? BEST4.
        '4/5/20'n        : ?? BEST4.
        '4/6/20'n        : ?? BEST4.
        '4/7/20'n        : ?? BEST4.
        '4/8/20'n        : ?? BEST4.
        '4/9/20'n        : ?? BEST4.
        '4/10/20'n       : ?? BEST4.
        '4/11/20'n       : ?? BEST4.
        '4/12/20'n       : ?? BEST4.
        '4/13/20'n       : ?? BEST4.
        '4/14/20'n       : ?? BEST4.
        '4/15/20'n       : ?? BEST4. ;
RUN;
