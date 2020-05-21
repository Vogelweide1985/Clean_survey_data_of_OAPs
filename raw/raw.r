library(tidyverse)
library(haven)



df <- read_spss("./raw/Daten_ZMG_SmartHome_ifak.sav")
df <- df %>% select(contains("zeit"))


saveRDS(df, "./public_data/survey.rds")
