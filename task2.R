
R version 3.5.1 (2018-07-02) -- "Feather Spray"
Copyright (C) 2018 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

>  data <- read.csv("https://raw.githubusercontent.com/benubah/r-community-explorer/master/docs/data/rugs.csv")
> head(data)
  X                                              name         city country    region members
1 1                          Customer Data Science LA Santa Monica     USA US/Canada     500
2 2                     Ulmer Data Science Stammtisch          Ulm Germany    Europe     381
3 3                       ODSC Vancouver Data Science    Vancouver  Canada US/Canada      79
4 4                          ODSC Denver Data Science       Denver     USA US/Canada      52
5 5          Western Mass Statistics and Data Science  Northampton     USA US/Canada     515
6 6 Clarksville Data Science and R Users Meetup Group  Clarksville     USA US/Canada      23
                                                                       fullurl    created past_events upcoming_events     visibility last_event
1                             https://www.meetup.com/Customer-Data-Science-LA/ 2019-06-20           6               1 public_limited 2019-12-05
2                        https://www.meetup.com/Ulmer-Data-Science-Stammtisch/ 2017-12-06          10               0         public 2019-11-25
3                          https://www.meetup.com/ODSC-Vancouver-Data-Science/ 2019-11-22           0               2         public 1970-01-01
4                             https://www.meetup.com/ODSC-Denver-Data-Science/ 2019-11-22           0               3         public 1970-01-01
5 https://www.meetup.com/Pioneer-Valley-and-Five-College-R-Statistical-Meetup/ 2013-01-02         204               2         public 2019-11-04
6    https://www.meetup.com/Clarksville-Data-Science-and-R-Users-Meetup-Group/ 2019-06-13           2               0         public 2019-08-11
>  str(data)
'data.frame':   904 obs. of  12 variables:
 $ X              : int  1 2 3 4 5 6 7 8 9 10 ...
 $ name           : Factor w/ 904 levels "#DataForGood - CorrelAid Berlin",..: 164 867 495 471 892 148 391 308 48 72 ...
 $ city           : Factor w/ 413 levels "´Amman","Århus",..: 348 386 393 120 278 92 200 224 27 40 ...
 $ country        : Factor w/ 84 levels "Argentina","Australia",..: 82 24 8 82 82 82 41 80 29 24 ...
 $ region         : Factor w/ 7 levels "Africa","Asia",..: 7 5 7 7 7 7 2 5 2 5 ...
 $ members        : int  500 381 79 52 515 23 35 594 210 439 ...
 $ fullurl        : Factor w/ 904 levels "https://www.meetup.com/100X-Exponential-Innovators-in-the-H-E-R-O-s-Journey/",..: 168 864 496 485 521 147 393 392 47 70 ...
 $ created        : Factor w/ 710 levels "2008-02-06","2008-07-17",..: 635 429 702 702 66 631 688 526 557 548 ...
 $ past_events    : int  6 10 0 0 204 2 0 24 0 6 ...
 $ upcoming_events: int  1 0 2 3 2 0 0 2 0 2 ...
 $ visibility     : Factor w/ 2 levels "public","public_limited": 2 1 1 1 1 1 1 1 1 1 ...
 $ last_event     : Factor w/ 354 levels "1970-01-01","2013-03-28",..: 338 328 1 1 308 249 1 345 1 330 ...
> myformat <- "%Y-%m-%d"
> data$ncreated <- as.Date(data$created, myformat)
> str(data)
'data.frame':   904 obs. of  13 variables:
 $ X              : int  1 2 3 4 5 6 7 8 9 10 ...
 $ name           : Factor w/ 904 levels "#DataForGood - CorrelAid Berlin",..: 164 867 495 471 892 148 391 308 48 72 ...
 $ city           : Factor w/ 413 levels "´Amman","Århus",..: 348 386 393 120 278 92 200 224 27 40 ...
 $ country        : Factor w/ 84 levels "Argentina","Australia",..: 82 24 8 82 82 82 41 80 29 24 ...
 $ region         : Factor w/ 7 levels "Africa","Asia",..: 7 5 7 7 7 7 2 5 2 5 ...
 $ members        : int  500 381 79 52 515 23 35 594 210 439 ...
 $ fullurl        : Factor w/ 904 levels "https://www.meetup.com/100X-Exponential-Innovators-in-the-H-E-R-O-s-Journey/",..: 168 864 496 485 521 147 393 392 47 70 ...
 $ created        : Factor w/ 710 levels "2008-02-06","2008-07-17",..: 635 429 702 702 66 631 688 526 557 548 ...
 $ past_events    : int  6 10 0 0 204 2 0 24 0 6 ...
 $ upcoming_events: int  1 0 2 3 2 0 0 2 0 2 ...
 $ visibility     : Factor w/ 2 levels "public","public_limited": 2 1 1 1 1 1 1 1 1 1 ...
 $ last_event     : Factor w/ 354 levels "1970-01-01","2013-03-28",..: 338 328 1 1 308 249 1 345 1 330 ...
 $ ncreated       : Date, format: "2019-06-20" "2017-12-06" "2019-11-22" "2019-11-22" ...
> head(data)
  X                                              name         city country    region members
1 1                          Customer Data Science LA Santa Monica     USA US/Canada     500
2 2                     Ulmer Data Science Stammtisch          Ulm Germany    Europe     381
3 3                       ODSC Vancouver Data Science    Vancouver  Canada US/Canada      79
4 4                          ODSC Denver Data Science       Denver     USA US/Canada      52
5 5          Western Mass Statistics and Data Science  Northampton     USA US/Canada     515
6 6 Clarksville Data Science and R Users Meetup Group  Clarksville     USA US/Canada      23
                                                                       fullurl    created past_events upcoming_events     visibility last_event   ncreated
1                             https://www.meetup.com/Customer-Data-Science-LA/ 2019-06-20           6               1 public_limited 2019-12-05 2019-06-20
2                        https://www.meetup.com/Ulmer-Data-Science-Stammtisch/ 2017-12-06          10               0         public 2019-11-25 2017-12-06
3                          https://www.meetup.com/ODSC-Vancouver-Data-Science/ 2019-11-22           0               2         public 1970-01-01 2019-11-22
4                             https://www.meetup.com/ODSC-Denver-Data-Science/ 2019-11-22           0               3         public 1970-01-01 2019-11-22
5 https://www.meetup.com/Pioneer-Valley-and-Five-College-R-Statistical-Meetup/ 2013-01-02         204               2         public 2019-11-04 2013-01-02
6    https://www.meetup.com/Clarksville-Data-Science-and-R-Users-Meetup-Group/ 2019-06-13           2               0         public 2019-08-11 2019-06-13
> startdate <- as.Date("2019-07-01")
> enddate <- as.Date("2019-09-30")
> newdata <- data[data$ncreated >= startdate &   data$ncreated <= enddate, ]
>  head(newdata)
      X                                   name       city        country    region members                                                        fullurl    created
128 128              South Central PA R-Ladies Middletown            USA US/Canada       9              https://www.meetup.com/South-Central-PA-R-Ladies/ 2019-08-24
190 190               ODSC Lisbon Data Science     Lisbon       Portugal    Europe     181               https://www.meetup.com/Lisbon-Data-Science-ODSC/ 2019-07-24
192 192             Oxford Social Data Science     Oxford United Kingdom    Europe      44          https://www.meetup.com/Social-Data-Science-Community/ 2019-09-12
206 206 Littleton/Golden/Lakewood Data Science  Littleton            USA US/Canada      41 https://www.meetup.com/Littleton-Golden-Lakewood-Data-Science/ 2019-08-07
209 209      Kolkata Data Science Meetup Group    Kolkata          India      Asia     436      https://www.meetup.com/Kolkata-Data-Science-Meetup-Group/ 2019-08-06
275 275  Utrecht Big data-analyse Meetup-groep    Utrecht    Netherlands    Europe      58  https://www.meetup.com/Utrecht-Big-data-analyse-Meetup-groep/ 2019-07-10
    past_events upcoming_events visibility last_event   ncreated
128           0               0     public 1970-01-01 2019-08-24
190           2               0     public 2019-11-19 2019-07-24
192           0               0     public 1970-01-01 2019-09-12
206           5               0     public 2019-11-16 2019-08-07
209           4               0     public 2019-12-15 2019-08-06
275           0               0     public 1970-01-01 2019-07-10
> str(newdata)
'data.frame':   62 obs. of  13 variables:
 $ X              : int  128 190 192 206 209 275 287 304 315 354 ...
 $ name           : Factor w/ 904 levels "#DataForGood - CorrelAid Berlin",..: 815 480 514 398 377 875 193 243 23 112 ...
 $ city           : Factor w/ 413 levels "´Amman","Århus",..: 249 219 291 222 198 388 297 390 1 64 ...
 $ country        : Factor w/ 84 levels "Argentina","Australia",..: 82 57 80 82 29 47 22 67 36 28 ...
 $ region         : Factor w/ 7 levels "Africa","Asia",..: 7 5 5 7 2 5 5 5 2 5 ...
 $ members        : int  9 181 44 41 436 58 171 162 59 133 ...
 $ fullurl        : Factor w/ 904 levels "https://www.meetup.com/100X-Exponential-Innovators-in-the-H-E-R-O-s-Journey/",..: 818 403 816 404 382 874 186 234 20 112 ...
 $ created        : Factor w/ 710 levels "2008-02-06","2008-07-17",..: 666 652 677 659 658 646 667 645 649 671 ...
 $ past_events    : int  0 2 0 5 4 0 1 2 0 1 ...
 $ upcoming_events: int  0 0 0 0 0 0 0 0 0 0 ...
 $ visibility     : Factor w/ 2 levels "public","public_limited": 1 1 1 1 1 1 1 1 1 1 ...
 $ last_event     : Factor w/ 354 levels "1970-01-01","2013-03-28",..: 1 322 1 320 348 1 293 335 1 311 ...
 $ ncreated       : Date, format: "2019-08-24" "2019-07-24" "2019-09-12" "2019-08-07" ...
> getwd()
[1] "C:/Users/bibli/Documents"
> setwd(dir="E:/nimagnna9")
> getwd()
[1] "E:/nimagnna9"
>  dir()
[1] "code.R"              "code_screenshot.doc" "emp.csv"             "lastsave.txt"        "newdata.csv"         "student.csv"        
> write.csv(newdata ,"final.csv")
>  dir()
[1] "code.R"              "code_screenshot.doc" "emp.csv"             "final.csv"           "lastsave.txt"        "newdata.csv"         "student.csv"        
> db1<-read.csv("final.csv")
>  head(db1)
  X.1   X                                   name       city        country    region members                                                        fullurl    created
1 128 128              South Central PA R-Ladies Middletown            USA US/Canada       9              https://www.meetup.com/South-Central-PA-R-Ladies/ 2019-08-24
2 190 190               ODSC Lisbon Data Science     Lisbon       Portugal    Europe     181               https://www.meetup.com/Lisbon-Data-Science-ODSC/ 2019-07-24
3 192 192             Oxford Social Data Science     Oxford United Kingdom    Europe      44          https://www.meetup.com/Social-Data-Science-Community/ 2019-09-12
4 206 206 Littleton/Golden/Lakewood Data Science  Littleton            USA US/Canada      41 https://www.meetup.com/Littleton-Golden-Lakewood-Data-Science/ 2019-08-07
5 209 209      Kolkata Data Science Meetup Group    Kolkata          India      Asia     436      https://www.meetup.com/Kolkata-Data-Science-Meetup-Group/ 2019-08-06
6 275 275  Utrecht Big data-analyse Meetup-groep    Utrecht    Netherlands    Europe      58  https://www.meetup.com/Utrecht-Big-data-analyse-Meetup-groep/ 2019-07-10
  past_events upcoming_events visibility last_event   ncreated
1           0               0     public 1970-01-01 2019-08-24
2           2               0     public 2019-11-19 2019-07-24
3           0               0     public 1970-01-01 2019-09-12
4           5               0     public 2019-11-16 2019-08-07
5           4               0     public 2019-12-15 2019-08-06
6           0               0     public 1970-01-01 2019-07-10
> 
