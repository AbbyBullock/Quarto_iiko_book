library(tidyverse)
library(lubridate)
library(hms)
library(dtplyr)
library(patchwork)
library(vroom)
library(gt)
library(gghighlight)

sales_iiko <- vroom("/Users/abbybullock/Library/Mobile Documents/com~apple~CloudDocs/DDM/Git/iiko/sales_iiko.csv")
VSH <- sales_iiko %>% 
  filter(str_detect(food_name, "ВСХ"))