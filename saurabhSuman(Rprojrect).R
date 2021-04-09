
#setting the directory for a project
setwd("E:/R_project")

#Reading the Csv file and storing in  mydata
mydata<-read.csv("UsWeatherReport.csv")

#checking the structure the of the mydata
str(mydata)

#finding the mean of actual minimum temperature and maximum temperature
mean_of_min_temp <- mean(mydata$actual_min_temp)
print(mean_of_min_temp)

mean_of_max_temp <- mean(mydata$actual_max_temp)
print(mean_of_max_temp)


#plotting the Bar graph of mean of temperature according to year
barplot(mydata$actual_mean_temp,xlab = "year",ylab = "temperature" ,main = "year vs mean_temperature")
box()

#plotting the histogram of minimum temperature according to year
hist(mydata$actual_min_temp,xlab = "Minimum Temperatue" ,main = "Frequency of Minimum Temperature")
box()

#box plot of average maximum temperature, year of minimum temperature and maximum temperature
boxplot(mydata$average_max_temp,mydata$actual_max_temp, mydata$average_min_temp, mydata$actual_min_temp,xlab ="Temerature", main ="comparison of average and real temperature")
box()

plot(mydata$average_min_temp ,type='l',main ="Average Minimum temperature")
box()

plot(mydata$average_min_temp,mydata$record_min_temp_year,xlab = "Average min Temperatue" ,ylab="Year")

#counting the temperature which is less than 70 for a pie chart
x <- length(which(mydata$actual_max_temp < 70))

#counting the temperature which is greater than 70 for a pie chart
x2 <- length(which(mydata$actual_max_temp >70))

#printing both the counter a and x2
print(x)
print(x2)

vec <- c(x,x2)
print(vec)

leb <- c("Temperature is less than 70", "Temperature is greater than 70")

#printing the pie chart of the maximum temperature in comparison of less than 70 and more than 70
pie(vec,leb,main ="Maximum Temperature between 2014-15 in USA")
box()





























