## Getting and clanning data
## Quiz 4, Week 4

## Question 1
## The American Community Survey distributes downloadable data about United States 
## communities. Download the 2006 microdata survey about housing for the state of
## Idaho using download.file() from here: 

file.url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(file.url, destfile="q1.csv", method="curl")
q1<- read.csv("q1.csv")

## Apply strsplit() to split all the names of the data frame on the characters "wgtp".
## What is the value of the 123 element of the resulting list?

answ1<- strsplit(names(q1), "wgtp")
answ1[123]

## Question 2
## Load the Gross Domestic Product data for the 190 ranked countries in this data set:

file.url2<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(file.url2, destfile="q2.csv", method="curl")
q2<- read.csv("q2.csv")

## Remove the commas from the GDP numbers in millions of dollars and average them. 
## What is the average? 

newq2<- q2[5:235,]
newq2<- newq2[1:190,]
names(newq2)<- c("ID_C", "Ranking", "NA", "Country", "GDP", 
                 "NA", "NA", "NA", "NA", "NA")
newq2$GDP<- gsub(",", "", as.character(newq2$GDP))
mean(as.numeric(newq2$GDP))

## Quistion 3
## In the data set from Question 2 what is a regular expression that would 
## allow you to count the number of countries whose name begins with 
## "United"? Assume that the variable with the country names in it 
## is named countryNames. How many countries begin with United?

grep("^United",newq2$Country)

## Question 4
## Load the Gross Domestic Product data for the 190 ranked countries in this data set: 
## Load the educational data from this data set: 

file.url4<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(file.url4, destfile="q4.csv", method="curl")
q4<- read.csv("q4.csv")

q4$CountryCode<- as.character(q4$CountryCode)
temp<-intersect(q4$CountryCode, newq2$ID_C)
newq4<-data.frame()
for (i in 1:length(temp)){
        temp2<- q4[q4$CountryCode==temp[i],]
        newq4<-rbind(newq4,temp2)
}
grep("Fiscal year end: June", newq4$Special.Notes)

## Question 5
## How many values were collected in 2012? How many values were collected 
## on Mondays in 2012?

install.packages("quantmod")
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
date<-index(amzn) ## crating a list with the values from Index
year<-grep("*2012", date) ## Create vector with the 2012 values
year<- date[year] ## Create list with only 2012 values
length(year)
days<-weekdays(year) ## Converting into days of the week
sum(days=="Monday") ## Calculate how many mondays.
