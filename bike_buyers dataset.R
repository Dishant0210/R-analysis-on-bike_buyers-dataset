#To do analysis on Bike_buyers dataset
#To load the dataset
df=read.csv("bike_buyers.csv")

#To read first 6 records
head(df)

#To read last 6 records
tail(df)

#To summarize the dataset
str(df)

#To get the statistical information about dataset
summary(df)

#To see number of rows and columns
dim(df)

#To get all columns name
colnames(df)

#check null values in each columns in data frame df
c1=colnames(df)
print(c1)
#Using for loop to iterate cl 
for(col in c1)
{
  cat("\n Null values in ",col,"=",sum(is.na(df[col])))
}

#From here we get to know that there are null values in
#Income,Children,Cars and Age column

#Age column
#To see null values in age column
sum(is.na(df$Age))
#To show those rows whose age is null
which(is.na(df$Age))
#replace null values of column Age with mean of Age permanently in dataset
#first find the mean of Age column
m=mean(df$Age,na.rm=TRUE)
#To replace null values of Age with mean of Age permanently
df$Age[is.na(df$Age)]=m
#To see null values in age column
sum(is.na(df$Age))

#Income column
#To see null values in age column
sum(is.na(df$Income))
#To show those rows whose Income is null
which(is.na(df$Income))
#replace null values of column Income with mean of Income permanently in dataset
#first find the mean of Age column
m=mean(df$Income,na.rm=TRUE)
#To replace null values of Age with mean of Age permanently
df$Income[is.na(df$Income)]=m
#To see null values in age column
sum(is.na(df$Income))



#Children column
#To see null values in age column
sum(is.na(df$Children))
#To show those rows whose Income is null
which(is.na(df$Children))
#replace null values of column Income with mean of Income permanently in dataset
#first find the mean of Age column
m=mean(df$Children,na.rm=TRUE)
#To replace null values of Age with mean of Age permanently
df$Children[is.na(df$Children)]=m
#To see null values in age column
sum(is.na(df$Children))



#Cars column
#To see null values in age column
sum(is.na(df$Cars))
#To show those rows whose Income is null
which(is.na(df$Cars))
#replace null values of column Income with mean of Income permanently in dataset
#first find the mean of Age column
m=mean(df$Cars,na.rm=TRUE)
#To replace null values of Age with mean of Age permanently
df$Cars[is.na(df$Cars)]=m
#To see null values in age column
sum(is.na(df$Cars))

#check null values in each columns in data frame df
c1=colnames(df)
#Using for loop to iterate cl 
for(col in c1)
{
  cat("\n Null values in ",col,"=",sum(is.na(df[col])))
}
#All the null values are removed


#To call the dplyr library
library(dplyr)
#To know how many male and female
df%>%group_by(Gender)%>%summarise(n())

#To know many types of Education are done by people
df%>%group_by(Education)%>%summarise(n())

##To know many types of Occupation people are doing
df%>%group_by(Occupation)%>%summarise(n())

#Visualization

#To visualize the income
hist(df$Income)

#To visualize the frequency of children
hist(df$Children, breaks=20)

#To visualize the frequency of car
hist(df$Cars, breaks = 25)

#To visualize the scatter plot between df and income
plot(df$Income)

#To make histogram of age
#call the library
library(ggplot2)
ggplot(df, aes(x = Age)) +geom_histogram()

#To make box plot
ggplot(data=df,aes(x=Income))+geom_boxplot()

#To make bar plot to categorize the education
ggplot(data=df,aes(x=Education))+geom_bar(fill='yellow',color='blue')

#To make bar plot to categorize the gender
ggplot(data=df,aes(x=Occupation))+geom_bar()
