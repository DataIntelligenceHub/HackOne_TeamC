#install.packages("tidyverse")
library(dplyr)
library(tidyverse)

setwd("E:/EnergyProject")
df <- read.csv("Energy.csv")

df$es13a_1[df$es13a_1 == 2] <- 0
df$es13a_2[df$es13a_2 == 2] <- 0
df$es13a_3[df$es13a_3 == 2] <- 0
df$es13a_4[df$es13a_4 == 2] <- 0
df$es13a_5[df$es13a_5 == 2] <- 0
df$es13a_6[df$es13a_6 == 2] <- 0
df$es13a_7[df$es13a_7 == 2] <- 0
df$es13a_8[df$es13a_8 == 2] <- 0
df$es13a_9[df$es13a_9 == 2] <- 0
df$es13a_10[df$es13a_10 == 2] <- 0

df$alt_sources <- rowSums(df[36:45])
df$alt_sources


df$National.Grid[df$National.Grid == 2] <- 0     
df$Local.mini.grid1[df$Local.mini.grid1 == 2] <- 0
df$Generator[df$Generator == 2] <- 0
df$Solar.energy[df$Solar.energy == 2] <- 0

df$srcofenergy <- df$National.Grid + df$Generator +df$Local.mini.grid1 + df$Solar.energy


df$es9_1[df$es9_1 == 2] <- 0 
df$es9_2[df$es9_2 == 2] <- 0 
df$es9_3[df$es9_3 == 2] <- 0 
df$es9_4[df$es9_4 == 2] <- 0 
df$es9_5[df$es9_5 == 2] <- 0 
df$es9_6[df$es9_6 == 2] <- 0 
df$es9_7[df$es9_7 == 2] <- 0 
df$es9_8[df$es9_8 == 2] <- 0 
df$es9_9[df$es9_9 == 2] <- 0 
df$es9_10[df$es9_10 == 2] <- 0 
df$es9_11[df$es9_11 == 2] <- 0 
df$es9_12[df$es9_12 == 2] <- 0 
df$es9_13[df$es9_13 == 2] <- 0 
df$es9_14[df$es9_14 == 2] <- 0 
df$es9_15[df$es9_15 == 2] <- 0 
df$es9_16[df$es9_16 == 2] <- 0 

df$low_kw_app <- df$es9_1+df$es9_2+df$es9_3+df$es9_4+df$es9_5+df$es9_6   
df$med_kw_app <- df$es9_7+df$es9_8+df$es9_9+df$es9_10+df$es9_11  
df$high_kw_app <- df$es9_12+df$es9_13+df$es9_14+df$es9_15+df$es9_16   


df$HH4_1[df$HH4_1 == 2] <- 0 
df$HH4_2[df$HH4_2 == 2] <- 0 
df$HH4_3[df$HH4_3 == 2] <- 0 
df$HH4_4[df$HH4_4 == 2] <- 0 
df$HH4_5[df$HH4_5 == 2] <- 0 
df$HH4_6[df$HH4_6 == 2] <- 0 
df$HH4_7[df$HH4_7 == 2] <- 0 
df$HH4_8[df$HH4_8 == 2] <- 0 
df$HH4_9[df$HH4_9 == 2] <- 0 
df$HH4_10[df$HH4_10 == 2] <- 0 
df$HH4_11[df$HH4_11 == 2] <- 0 
df$HH4_12[df$HH4_12 == 2] <- 0 

df$winter <- df$HH4_10 + df$HH4_11 +df$HH4_12 + df$HH4_12 + df$HH4_1 + df$HH4_2
df$summer <- df$HH4_4 + df$HH4_5 +df$HH4_6 + df$HH4_7 + df$HH4_8 + df$HH4_9 

