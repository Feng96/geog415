library(tidyverse)
library(hexbin)
library(patchwork)
library(RSQLite)


download.file(url = 'https://ndownloader.figshare.com/files/2292169',
              destfile = 'data_raw/portal_data_joined.csv')

surveys <- read_csv("data_raw/portal_data_joined.csv")

head(surveys)

str(surveys)