
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

>  #task 1
> db<-read.csv("E:/nimagnna9/emp.csv")
> db
  Emp_ID   F_Name     L_Name Post     Project Rating Salary Sex
1 198944   Archit    Chandra  ASE Unallocated      2  20000   M
2 201601     Amit     Pathak  ASE Unallocated      3  21000   M
3 198966   Pankaj     Taneja  ASE     Agilent      4  22000   M
4 113786     Ajay  Choudhary  ITA     Agilent      5  30000   M
5 145678 Abhishek     Bansal  ITA     Agilent      5  30000   M
6 198312    Divya     Saxena  ASE   Ultimatix      2  20000   F
7 198945  Sankalp Srivastava  ASE        Amex      2  20000   M
8 187310   Shikha    Kaushal  ITA        Amex      3  18000   F
9 107178   Dhiren       Sahu   VP        Citi      5 300000   M
>  #task 2
>  head(db)
  Emp_ID   F_Name    L_Name Post     Project Rating Salary Sex
1 198944   Archit   Chandra  ASE Unallocated      2  20000   M
2 201601     Amit    Pathak  ASE Unallocated      3  21000   M
3 198966   Pankaj    Taneja  ASE     Agilent      4  22000   M
4 113786     Ajay Choudhary  ITA     Agilent      5  30000   M
5 145678 Abhishek    Bansal  ITA     Agilent      5  30000   M
6 198312    Divya    Saxena  ASE   Ultimatix      2  20000   F
> #task 3
> name<-c("Aiza","Ria","Vidushi","khushi","Tania")
> age<-c(16,15,13,16,14)
> class<-("XI","X","VII","XI","Ix")
Error: unexpected ',' in "class<-("XI","
> class<-c("XI","X","VII","XI","Ix")
> student<-data.frame(name,age,class)
> student
     name age class
1    Aiza  16    XI
2     Ria  15     X
3 Vidushi  13   VII
4  khushi  16    XI
5   Tania  14    Ix
> #task 4
> height<-c(5,5.1,4.9,4,4.7)
> student<-cbind(student,height)
> student
     name age class height
1    Aiza  16    XI    5.0
2     Ria  15     X    5.1
3 Vidushi  13   VII    4.9
4  khushi  16    XI    4.0
5   Tania  14    Ix    4.7
> name<-"Aditi"
> age<-15
> class<-"X"
>  height<-5
> d<-data.frame(name,age,class,height)
> d
   name age class height
1 Aditi  15     X      5
>  student<-rbind(student,d)
> student
     name age class height
1    Aiza  16    XI    5.0
2     Ria  15     X    5.1
3 Vidushi  13   VII    4.9
4  khushi  16    XI    4.0
5   Tania  14    Ix    4.7
6   Aditi  15     X    5.0
>  getwd()
[1] "C:/Users/bibli/Documents"
> setwd(dir="E:/nimagnna9")
> getwd()
[1] "E:/nimagnna9"
>  dir()
[1] "emp.csv"
>  #task 5
> write.csv(student ,"student.csv")
> dir()
[1] "emp.csv"     "student.csv"
> db1<-read.csv("student.csv")
> db1
  X    name age class height
1 1    Aiza  16    XI    5.0
2 2     Ria  15     X    5.1
3 3 Vidushi  13   VII    4.9
4 4  khushi  16    XI    4.0
5 5   Tania  14    Ix    4.7
6 6   Aditi  15     X    5.0
>  #task 6
> data <- read.csv("https://people.sc.fsu.edu/~jburkardt/data/csv/homes.csv")
> head(data)
  Sell List Living Rooms Beds Baths Age Acres Taxes
1  142  160     28    10    5     3  60  0.28  3167
2  175  180     18     8    4     1  12  0.43  4033
3  129  132     13     6    3     1  41  0.33  1471
4  138  140     17     7    3     1  22  0.46  3204
5  232  240     25     8    4     3   5  2.05  3613
6  135  140     18     7    4     3   9  0.57  3028
> 
