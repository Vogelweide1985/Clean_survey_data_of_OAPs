library(tidyverse)
library(haven)



df <- read_spss("./raw/Daten_ZMG_SmartHome_ifak.sav")
str(df)


df <- df %>% select(contains("zeit"), gender = F1, age_group = F2r, media_filter = F6_671)


saveRDS(df, "./public_data/survey.rds")

