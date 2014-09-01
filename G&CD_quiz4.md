# Getting and clanning data
### Quiz 4, Week 4
============================

Libraries needed and names of the files needed.


```r
install.packages("quantmod")
```

```
## Error: trying to use CRAN without setting a mirror
```

```r
library(quantmod)
```

```
## Loading required package: Defaults
## Loading required package: xts
## Loading required package: zoo
## 
## Attaching package: 'zoo'
## 
## The following objects are masked from 'package:base':
## 
##     as.Date, as.Date.numeric
## 
## Loading required package: TTR
## Version 0.4-0 included new data defaults. See ?getSymbols.
```

```r
file.url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
data.q1<- "q1.csv"
file.url2<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
data.q2<- "q2.csv"
file.url4<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
data.q4<- "q4.csv"
```

## Question 1

The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv):


```r
if(file.exists(data.q1)==FALSE){
        download.file(file.url, destfile="q1.csv", method="curl")
}
q1<- read.csv("q1.csv")
head(q1)
```

```
##   RT SERIALNO DIVISION PUMA REGION ST  ADJUST WGTP NP TYPE ACR AGS BDS BLD
## 1  H      186        8  700      4 16 1015675   89  4    1   1  NA   4   2
## 2  H      306        8  700      4 16 1015675  310  1    1  NA  NA   1   7
## 3  H      395        8  100      4 16 1015675  106  2    1   1  NA   3   2
## 4  H      506        8  700      4 16 1015675  240  4    1   1  NA   4   2
## 5  H      835        8  800      4 16 1015675  118  4    1   2   1   5   2
## 6  H      989        8  700      4 16 1015675  115  4    1   1  NA   3   2
##   BUS CONP ELEP FS FULP GASP HFL INSP KIT MHP MRGI MRGP MRGT MRGX PLM RMS
## 1   2   NA  180  0    2    3   3  600   1  NA    1 1300    1    1   1   9
## 2  NA   NA   60  0    2    3   3   NA   1  NA   NA   NA   NA   NA   1   2
## 3   2   NA   70  0    2   30   1  200   1  NA   NA   NA   NA    3   1   7
## 4   2   NA   40  0    2   80   1  200   1  NA    1  860    1    1   1   6
## 5   2   NA  250  0    2    3   3  700   1  NA    1 1900    1    1   1   7
## 6   2   NA  130  0    2    3   3  250   1  NA    1  700    1    1   1   6
##   RNTM RNTP SMP TEL TEN VACS VAL VEH WATP YBL FES  FINCP FPARC GRNTP GRPIP
## 1   NA   NA  NA   1   1   NA  17   3  840   5   2 105600     2    NA    NA
## 2    2  600  NA   1   3   NA  NA   1    1   3  NA     NA    NA   660    23
## 3   NA   NA  NA   1   2   NA  18   2   50   5   7   9400     2    NA    NA
## 4   NA   NA 400   1   1   NA  19   3  500   2   1  66000     1    NA    NA
## 5   NA   NA 650   1   1   NA  20   5    2   3   1  93000     2    NA    NA
## 6   NA   NA 400   1   1   NA  15   2 1200   5   2  61000     1    NA    NA
##   HHL HHT  HINCP HUGCL HUPAC HUPAOC HUPARC LNGI MV NOC NPF NPP NR NRC
## 1   1   1 105600     0     2      2      2    1  4   2   4   0  0   2
## 2   1   4  34000     0     4      4      4    1  3   0  NA   0  0   0
## 3   1   3   9400     0     2      2      2    1  2   1   2   0  0   1
## 4   1   1  66000     0     1      1      1    1  3   2   4   0  0   2
## 5   1   1  93000     0     2      2      2    1  1   1   4   0  0   1
## 6   1   1  61000     0     1      1      1    1  4   2   4   0  0   2
##   OCPIP PARTNER PSF R18 R60 R65 RESMODE SMOCP SMX SRNT SVAL TAXP WIF
## 1    18       0   0   1   0   0       1  1550   3    0    1   24   3
## 2    NA       0   0   0   0   0       2    NA  NA    1    0   NA  NA
## 3    23       0   0   1   0   0       1   179  NA    0    1   16   1
## 4    26       0   0   1   0   0       2  1422   1    0    1   31   2
## 5    36       0   0   1   0   0       1  2800   1    0    1   25   3
## 6    26       0   0   1   0   0       2  1330   2    0    1    7   1
##   WKEXREL WORKSTAT FACRP FAGSP FBDSP FBLDP FBUSP FCONP FELEP FFSP FFULP
## 1       2        3     0     0     0     0     0     0     0    0     0
## 2      NA       NA     0     0     0     0     0     0     0    0     0
## 3      13       13     0     0     0     0     0     0     0    0     0
## 4       2        1     0     0     0     0     0     0     0    0     0
## 5       1        1     0     0     0     0     0     0     0    0     0
## 6       7        3     0     0     0     0     0     0     0    0     0
##   FGASP FHFLP FINSP FKITP FMHP FMRGIP FMRGP FMRGTP FMRGXP FMVYP FPLMP
## 1     0     0     0     0    0      0     0      0      0     0     0
## 2     0     0     0     0    0      0     0      0      0     0     0
## 3     0     0     0     0    0      0     0      0      0     0     0
## 4     0     0     0     0    0      0     0      0      0     0     0
## 5     0     0     0     0    0      0     0      0      0     0     0
## 6     0     0     1     0    0      0     0      0      0     0     0
##   FRMSP FRNTMP FRNTP FSMP FSMXHP FSMXSP FTAXP FTELP FTENP FVACSP FVALP
## 1     0      0     0    0      0      0     0     0     0      0     0
## 2     0      0     0    0      0      0     0     0     0      0     0
## 3     0      0     0    0      0      0     0     0     0      0     0
## 4     0      0     0    0      0      0     0     0     0      0     0
## 5     0      0     0    0      0      0     0     0     0      0     0
## 6     0      0     0    0      0      0     1     0     0      0     0
##   FVEHP FWATP FYBLP wgtp1 wgtp2 wgtp3 wgtp4 wgtp5 wgtp6 wgtp7 wgtp8 wgtp9
## 1     0     0     0    87    28   156    95    26    25    95    93    93
## 2     0     0     1   539   363   293   422   566   289    87   242   453
## 3     0     0     0   187    35   184   178    83    95    31    32   177
## 4     0     0     0   232   406   234   270   249   242   406   249   287
## 5     0     0     0   107   194   129    41   156   174    47   113   101
## 6     0     1     0   191   197   127   115   115   107   119    34    32
##   wgtp10 wgtp11 wgtp12 wgtp13 wgtp14 wgtp15 wgtp16 wgtp17 wgtp18 wgtp19
## 1     91     87    166     90     25    153     89    148     82     25
## 2    453    334    358    414    102    281     99    108    278    131
## 3    118    110    114    184    107     95    115     33    118    120
## 4     67     72    413    399     77    245    424     67     63    226
## 5     33    115     52    113     95    135    206    100    185    135
## 6     30    123    199    117     33    109    117     31    115    201
##   wgtp20 wgtp21 wgtp22 wgtp23 wgtp24 wgtp25 wgtp26 wgtp27 wgtp28 wgtp29
## 1    180     90     24    140     92     25     27     86     84     87
## 2    407    447    264    352    238    390    336    122    374    482
## 3     37    184     35    176    176    110    103     29     30    197
## 4    254    238     69    238    255    239    248     69    234    247
## 5    279    116     33    105    244     38     30    230    123    123
## 6    190    184    198    113    109    117    111    110     33     37
##   wgtp30 wgtp31 wgtp32 wgtp33 wgtp34 wgtp35 wgtp36 wgtp37 wgtp38 wgtp39
## 1     93     90    149     91     28    143     81    144     95     27
## 2    468    335    251    613    104    284    116     91    326    102
## 3    127     92    118    177     99     99    109     34    100    105
## 4    437    423     74     61    401    267     72    388    335    229
## 5    243    120    238     98     90    107     44    122     32    127
## 6     36    110    183    114     35    134    119     32    121    188
##   wgtp40 wgtp41 wgtp42 wgtp43 wgtp44 wgtp45 wgtp46 wgtp47 wgtp48 wgtp49
## 1     22     90    171     27     83    153    148     92     91     91
## 2    361    107    253    321    289     96    343    564    274    118
## 3     33    173     36    168    175     99    103     30     35    155
## 4    236    239     65    259    247    230    225     82    220    233
## 5    195    116     36    135    237     33     33    249    102     84
## 6     33     34     32    109    115    115    112    119    192    186
##   wgtp50 wgtp51 wgtp52 wgtp53 wgtp54 wgtp55 wgtp56 wgtp57 wgtp58 wgtp59
## 1     93     90     26     94    142     24     91     29     84    148
## 2    118    321    261    130    463    294    479    391    307    476
## 3    102     95    107    185    120    114    113     36    115    103
## 4    419    390     69     74    391    276     70    422    409    223
## 5    224    119    250    119    125    126     32    112     33    131
## 6    213    106     34    124    179    106    107    190    112     34
##   wgtp60 wgtp61 wgtp62 wgtp63 wgtp64 wgtp65 wgtp66 wgtp67 wgtp68 wgtp69
## 1     30     93    143     24     88    147    145     91     83     83
## 2    283    116    353    323    374    106    236    380    313     90
## 3     29    183     35    179    169     95    110     28     34    233
## 4    245    269    488    221    250    247    240    415    234    219
## 5     45    101    165    125     41    191    195     49    119     92
## 6     35     32     34    119    123    122    121    123    196    196
##   wgtp70 wgtp71 wgtp72 wgtp73 wgtp74 wgtp75 wgtp76 wgtp77 wgtp78 wgtp79
## 1     86     81     27     93    151     28     79     25    101    157
## 2     94    292    401     81    494    346    496    615    286    454
## 3     97    123    119    168    107     95    101     30    124    106
## 4     66     68    359    385     71    234    421     76     77    242
## 5     44    127     36    119    121    116    209     97    176    144
## 6    207    120     34    109    199    116    110    211    120     31
##   wgtp80
## 1    129
## 2    260
## 3     31
## 4    231
## 5     38
## 6    189
```

Apply strsplit() to split all the names of the data frame on the characters "wgtp". **What is the value of the 123 element of the resulting list?**


```r
answ1<- strsplit(names(q1), "wgtp")
answ1[123]
```

```
## [[1]]
## [1] ""   "15"
```

=============================================

## Question 2

Load the Gross Domestic Product data for the 190 ranked countries in this [data](https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv) set:


```r
if(file.exists(data.q2)==FALSE){
        download.file(file.url2, destfile="q2.csv", method="curl")      
}
q2<- read.csv("q2.csv")
head(q2)
```

```
##     X Gross.domestic.product.2012 X.1           X.2          X.3 X.4 X.5
## 1                                  NA                                 NA
## 2                                  NA               (millions of      NA
## 3                         Ranking  NA       Economy  US dollars)      NA
## 4                                  NA                                 NA
## 5 USA                           1  NA United States  16,244,600       NA
## 6 CHN                           2  NA         China   8,227,103       NA
##   X.6 X.7 X.8
## 1  NA  NA  NA
## 2  NA  NA  NA
## 3  NA  NA  NA
## 4  NA  NA  NA
## 5  NA  NA  NA
## 6  NA  NA  NA
```

Remove the commas from the GDP numbers in millions of dollars and average them. 
**What is the average?**


```r
newq2<- q2[5:235,]
newq2<- newq2[1:190,]
names(newq2)<- c("ID_C", "Ranking", "NA", "Country", "GDP", 
                 "NA", "NA", "NA", "NA", "NA")
newq2$GDP<- gsub(",", "", as.character(newq2$GDP))
mean(as.numeric(newq2$GDP))
```

```
## [1] 377652
```
========================================================

## Question 3

In the data set from Question 2 **what is a regular expression that would allow you to count the number of countries whose name begins with "United"? **Assume that the variable with the country names in it is named countryNames. How many countries begin with United?


```r
q3<-grep("^United",newq2$Country)
q3
```

```
## [1]  1  6 32
```
================================

## Question 4

Load the Gross Domestic Product data for the 190 ranked countries from before.

Load the educaitional data from this [data](https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv) set: 
Load the educational data from this data set: 


```r
if(file.exists(data.q4)==FALSE){
        download.file(file.url4, destfile="q4.csv", method="curl")
}
 q4<- read.csv("q4.csv")
head(q4)
```

```
##   CountryCode                    Long.Name         Income.Group
## 1         ABW                        Aruba High income: nonOECD
## 2         ADO      Principality of Andorra High income: nonOECD
## 3         AFG Islamic State of Afghanistan           Low income
## 4         AGO  People's Republic of Angola  Lower middle income
## 5         ALB          Republic of Albania  Upper middle income
## 6         ARE         United Arab Emirates High income: nonOECD
##                       Region Lending.category Other.groups  Currency.Unit
## 1  Latin America & Caribbean                                Aruban florin
## 2      Europe & Central Asia                                         Euro
## 3                 South Asia              IDA         HIPC Afghan afghani
## 4         Sub-Saharan Africa              IDA              Angolan kwanza
## 5      Europe & Central Asia             IBRD                Albanian lek
## 6 Middle East & North Africa                                U.A.E. dirham
##   Latest.population.census  Latest.household.survey
## 1                     2000                         
## 2           Register based                         
## 3                     1979               MICS, 2003
## 4                     1970 MICS, 2001, MIS, 2006/07
## 5                     2001               MICS, 2005
## 6                     2005                         
##                                                                 Special.Notes
## 1                                                                            
## 2                                                                            
## 3 Fiscal year end: March 20; reporting period for national accounts data: FY.
## 4                                                                            
## 5                                                                            
## 6                                                                            
##   National.accounts.base.year National.accounts.reference.year
## 1                        1995                               NA
## 2                                                           NA
## 3                   2002/2003                               NA
## 4                        1997                               NA
## 5                                                         1996
## 6                        1995                               NA
##   System.of.National.Accounts SNA.price.valuation
## 1                          NA                    
## 2                          NA                    
## 3                          NA                 VAB
## 4                          NA                 VAP
## 5                        1993                 VAB
## 6                          NA                 VAB
##   Alternative.conversion.factor PPP.survey.year
## 1                                            NA
## 2                                            NA
## 3                                            NA
## 4                       1991-96            2005
## 5                                          2005
## 6                                            NA
##   Balance.of.Payments.Manual.in.use External.debt.Reporting.status
## 1                                                                 
## 2                                                                 
## 3                                                           Actual
## 4                              BPM5                         Actual
## 5                              BPM5                         Actual
## 6                              BPM4                               
##   System.of.trade Government.Accounting.concept
## 1         Special                              
## 2         General                              
## 3         General                  Consolidated
## 4         Special                              
## 5         General                  Consolidated
## 6         General                  Consolidated
##   IMF.data.dissemination.standard
## 1                                
## 2                                
## 3                            GDDS
## 4                            GDDS
## 5                            GDDS
## 6                            GDDS
##   Source.of.most.recent.Income.and.expenditure.data
## 1                                                  
## 2                                                  
## 3                                                  
## 4                                         IHS, 2000
## 5                                        LSMS, 2005
## 6                                                  
##   Vital.registration.complete Latest.agricultural.census
## 1                                                       
## 2                         Yes                           
## 3                                                       
## 4                                                1964-65
## 5                         Yes                       1998
## 6                                                   1998
##   Latest.industrial.data Latest.trade.data Latest.water.withdrawal.data
## 1                     NA              2008                           NA
## 2                     NA              2006                           NA
## 3                     NA              2008                         2000
## 4                     NA              1991                         2000
## 5                   2005              2008                         2000
## 6                     NA              2008                         2005
##   X2.alpha.code WB.2.code           Table.Name           Short.Name
## 1            AW        AW                Aruba                Aruba
## 2            AD        AD              Andorra              Andorra
## 3            AF        AF          Afghanistan          Afghanistan
## 4            AO        AO               Angola               Angola
## 5            AL        AL              Albania              Albania
## 6            AE        AE United Arab Emirates United Arab Emirates
```

Match the data based on the country shortcode. Of the countries for which the end of the fiscal year is available, **how many end in June?**


```r
q4$CountryCode<- as.character(q4$CountryCode)
temp<-intersect(q4$CountryCode, newq2$ID_C)
newq4<-data.frame()
for (i in 1:length(temp)){
        temp2<- q4[q4$CountryCode==temp[i],]
        newq4<-rbind(newq4,temp2)
}
answq4<-grep("Fiscal year end: June", newq4$Special.Notes)
length(answq4)
```

```
## [1] 13
```
==================================================

## Question 5

How many values were collected in 2012? How many values were collected on Mondays in 2012?


```r
amzn = getSymbols("AMZN",auto.assign=FALSE)
```

```
##     As of 0.4-0, 'getSymbols' uses env=parent.frame() and
##  auto.assign=TRUE by default.
## 
##  This  behavior  will be  phased out in 0.5-0  when the call  will
##  default to use auto.assign=FALSE. getOption("getSymbols.env") and 
##  getOptions("getSymbols.auto.assign") are now checked for alternate defaults
## 
##  This message is shown once per session and may be disabled by setting 
##  options("getSymbols.warning4.0"=FALSE). See ?getSymbol for more details
```

```r
date<-index(amzn) ## crating a list with the values from Index
year<-grep("*2012", date) ## Create vector with the 2012 values
year<- date[year] ## Create list with only 2012 values
length(year)
```

```
## [1] 250
```

```r
days<-weekdays(year) ## Converting into days of the week
sum(days=="Monday") ## Calculate how many mondays.
```

```
## [1] 47
```
