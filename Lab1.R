library(tidyverse)
library(lubridate)

download.file(url = 'https://ndownloader.figshare.com/files/2292169',
              destfile = 'data_raw/portal_data_joined.csv')

surveys <- read_csv("data_raw/portal_data_joined.csv")

head(surveys)

str(surveys)

surveys$sex <- factor(surveys$sex)

summary(surveys$sex)

year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
year_fct <- as.numeric(as.character(year_fct))
year_fct
typeof(year_fct)

sex <- factor(c("male", "female", "female", "male"))

sex <- factor(surveys$sex)
levels(sex)

sex <- addNA(sex)

levels(sex)

levels(sex)[3] <- 'undetermined'
levels(sex)

head(sex)

plot(sex)


test_date <- ymd("2015-01-01")
str(test_date)

my_date <- ymd(paste("2015", "1", "1", sep = "-")) 

surveys <- date
str(my_date)

paste(surveys$year, surveys$month, surveys$day, sep = "-")

surveys$date <- ymd(paste(surveys$year, surveys$month, surveys$day, sep = "-"))

str(surveys) # notice the new column, with 'date' as the class

summary(surveys$date)

missing_dates <- surveys[is.na(surveys$date), c("year", "month", "day")]
head(missing_dates)



str(surveys)

test <- select(surveys,plot_id,species_id,weight)
test2 <- filter(surveys,year == 1995)