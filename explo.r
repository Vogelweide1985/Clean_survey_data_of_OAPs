library(tidyverse)
library(lubridate)

#Load Data
df <- readRDS("./public_data/survey.rds")

#Renaming cols
colnames(df) <- gsub("Zeitstempel", "timestamp", colnames(df))

#Transmute timestamps to lubridate duration
df <- df %>%
      select(starts_with("timestamp")) %>%
      transmute_all(duration)


#Create unique ID
df$id <- 1:length(1:nrow(df))

#Summarise of total time -> "timestamp_5"
summary(df$timestamp_5)

#Plot ID vs. total_time
ggplot(df, aes(x=id, y= dminutes(timestamp_5))) + geom_point()

#Plot Boxplot
ggplot(df, aes(y=dminutes(timestamp_5))) + geom_boxplot()


