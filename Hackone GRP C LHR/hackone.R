getwd()
#setwd('C:/Users/junaid.raza/Desktop/hackhone/',header=TRUE)
getwd()
hackdf <- read.csv('Energyupdated.csv', header = TRUE)

#testdf <- read.csv('Energyupdated.csv', header = TRUE)

head(hackdf)

#print only cloumn names
names(hackdf)






#----------------------Junaid Task--------------------#


#check data types of four cloumns
class(hackdf$National.Grid) #ineteger
class(hackdf$Local.mini.grid1) #integer
class(hackdf$Generator) #integer
class (hackdf$Solar.energy) #integer

#craete new cloumn
hackdf$srcofenergy<-NA # new cloumn created



#updaate column values with 2 to 0 so we can take count of only 1's
hackdf$National.Grid[hackdf$National.Grid == 2] <- 0     
hackdf$Local.mini.grid1[hackdf$Local.mini.grid1 == 2] <- 0
hackdf$Generator[hackdf$Generator == 2] <- 0
hackdf$Solar.energy[hackdf$Solar.energy == 2] <- 0
#all 2's replaced with 0

#Now these four columns contain only 1 and 0 so we can take count sum
print(hackdf$National.Grid)
print(hackdf$Local.mini.grid1)
print(hackdf$Generator)
print(hackdf$Solar.energy)


#Count sum of 1's of four columns copy into srcofenergy
hackdf$srcofenergy <- hackdf$National.Grid + hackdf$Generator +hackdf$Local.mini.grid1 + hackdf$Solar.energy

#Removing four cloumnc which i have added in srcofenergy
hackdf$National.Grid <- NULL   
hackdf$Local.mini.grid1 <- NULL
hackdf$Generator <- NULL
hackdf$Solar.energy <- NULL
#Removed four cloumns successfully


#---------------------------------Shazil Task---------------------------#


#updaate column values with 2 to 0 so we can take count of only 1's
hackdf$HH4_1[hackdf$HH4_1 == 2] <- 0 
hackdf$HH4_2[hackdf$HH4_2 == 2] <- 0 
hackdf$HH4_3[hackdf$HH4_3 == 2] <- 0 
hackdf$HH4_4[hackdf$HH4_4 == 2] <- 0 
hackdf$HH4_5[hackdf$HH4_5 == 2] <- 0 
hackdf$HH4_6[hackdf$HH4_6 == 2] <- 0 
hackdf$HH4_7[hackdf$HH4_7 == 2] <- 0 
hackdf$HH4_8[hackdf$HH4_8 == 2] <- 0 
hackdf$HH4_9[hackdf$HH4_9 == 2] <- 0 
hackdf$HH4_10[hackdf$HH4_10 == 2] <- 0 
hackdf$HH4_11[hackdf$HH4_11 == 2] <- 0 
hackdf$HH4_12[hackdf$HH4_12 == 2] <- 0 
# all changed

#craete new cloumn
hackdf$winter<-NA # new cloumn created
hackdf$summer<-NA 

#updating winter cloumns
hackdf$winter <- hackdf$HH4_10 + hackdf$HH4_11 +hackdf$HH4_12 + hackdf$HH4_12 + hackdf$HH4_1 + hackdf$HH4_2
hackdf$summer <- hackdf$HH4_4 + hackdf$HH4_5 +hackdf$HH4_6 + hackdf$HH4_7 + hackdf$HH4_8 + hackdf$HH4_9 

#Removing four cloumnc which i have added in srcofenergy
hackdf$HH4_1 <- NULL   
hackdf$HH4_2 <- NULL 
hackdf$HH4_3 <- NULL 
hackdf$HH4_4 <- NULL 
hackdf$HH4_5 <- NULL 
hackdf$HH4_6 <- NULL 
hackdf$HH4_7 <- NULL 
hackdf$HH4_8 <- NULL 
hackdf$HH4_9 <- NULL 
hackdf$HH4_10 <- NULL 
hackdf$HH4_11 <- NULL 
hackdf$HH4_12 <- NULL 
#Removed four cloumns successfully

#---------------------------------Ihtsham  Task---------------------------#

#updaate column values with 2 to 0 so we can take count of only 1's
hackdf$es13a_1[hackdf$es13a_1 == 2] <- 0 
hackdf$es13a_2[hackdf$es13a_2 == 2] <- 0 
hackdf$es13a_3[hackdf$es13a_3 == 2] <- 0 
hackdf$es13a_4[hackdf$es13a_4 == 2] <- 0 
hackdf$es13a_5[hackdf$es13a_5 == 2] <- 0 
hackdf$es13a_6[hackdf$es13a_6 == 2] <- 0 
hackdf$es13a_7[hackdf$es13a_7 == 2] <- 0 
hackdf$es13a_8[hackdf$es13a_8 == 2] <- 0 
hackdf$es13a_9[hackdf$es13a_9 == 2] <- 0 
hackdf$es13a_10[hackdf$es13a_10 == 2] <- 0 

#craete new cloumn
hackdf$alt_sources<-NA 

#adding all alt sources 
hackdf$alt_sources <- hackdf$es13a_1+hackdf$es13a_2+hackdf$es13a_3+hackdf$es13a_4+hackdf$es13a_5+hackdf$es13a_6+hackdf$es13a_7+hackdf$es13a_8+hackdf$es13a_9+hackdf$es13a_10   
#deletig now rest cloumns es13a_1 to es13a_10
hackdf$es13a_1 <- NULL 
hackdf$es13a_2 <- NULL 
hackdf$es13a_3 <- NULL 
hackdf$es13a_4 <- NULL 
hackdf$es13a_5 <- NULL 
hackdf$es13a_6 <- NULL 
hackdf$es13a_7 <- NULL 
hackdf$es13a_8 <- NULL 
hackdf$es13a_9 <- NULL 
hackdf$es13a_10 <- NULL 

#---------------------------------Ali Mehroz  Task---------------------------#

#updaate column values with 2 to 0 so we can take count of only 1's
hackdf$es9_1[hackdf$es9_1 == 2] <- 0 
hackdf$es9_2[hackdf$es9_2 == 2] <- 0 
hackdf$es9_3[hackdf$es9_3 == 2] <- 0 
hackdf$es9_4[hackdf$es9_4 == 2] <- 0 
hackdf$es9_5[hackdf$es9_5 == 2] <- 0 
hackdf$es9_6[hackdf$es9_6 == 2] <- 0 
hackdf$es9_7[hackdf$es9_7 == 2] <- 0 
hackdf$es9_8[hackdf$es9_8 == 2] <- 0 
hackdf$es9_9[hackdf$es9_9 == 2] <- 0 
hackdf$es9_10[hackdf$es9_10 == 2] <- 0 
hackdf$es9_11[hackdf$es9_11 == 2] <- 0 
hackdf$es9_12[hackdf$es9_12 == 2] <- 0 
hackdf$es9_13[hackdf$es9_13 == 2] <- 0 
hackdf$es9_14[hackdf$es9_14 == 2] <- 0 
hackdf$es9_15[hackdf$es9_15 == 2] <- 0 
hackdf$es9_16[hackdf$es9_16 == 2] <- 0 

#craete new cloumn
hackdf$low_kw_app<-NA 
hackdf$med_kw_app<-NA 
hackdf$high_kw_app<-NA 

#adding cloumns
hackdf$low_kw_app <- hackdf$es9_1+hackdf$es9_2+hackdf$es9_3+hackdf$es9_4+hackdf$es9_5+hackdf$es9_6   
hackdf$med_kw_app <- hackdf$es9_7+hackdf$es9_8+hackdf$es9_9+hackdf$es9_10+hackdf$es9_11  
hackdf$high_kw_app <- hackdf$es9_12+hackdf$es9_13+hackdf$es9_14+hackdf$es9_15+hackdf$es9_16   

#deletig now rest cloumns es9a_1 to es9a_16
hackdf$es9_1 <- NULL 
hackdf$es9_2 <- NULL
hackdf$es9_3 <- NULL
hackdf$es9_4 <- NULL
hackdf$es9_5 <- NULL
hackdf$es9_6 <- NULL
hackdf$es9_7 <- NULL
hackdf$es9_8 <- NULL
hackdf$es9_9 <- NULL
hackdf$es9_10 <- NULL
hackdf$es9_11 <- NULL
hackdf$es9_12 <- NULL
hackdf$es9_13 <- NULL
hackdf$es9_14 <- NULL
hackdf$es9_15 <- NULL
hackdf$es9_16 <- NULL

#-------------------------replace male and female-------------------#

#updaate column values male with 1 and female with 2
hackdf$S1[hackdf$S1 == 1] <- 'male' 
hackdf$S1[hackdf$S1 == 2] <- 'female' 

hackdf$S1 <- colnames()

#Changig col name from S1 to gender
colnames(hackdf)[colnames(hackdf)=="S1"] <- "gender"

#Changig col name from S2 to fem_mem_grp
colnames(hackdf)[colnames(hackdf)=="S2"] <- "fem_mem_grp"

#Changig col name from S3 to home_type
colnames(hackdf)[colnames(hackdf)=="S3"] <- "home_type"

#we have four types of building 'hut'- 'apartment' -'one story' so we need
#to change number in theri respective name (1-hut) (2-apartment)

hackdf$home_type[hackdf$home_type == 1] <- 'hut' 
hackdf$home_type[hackdf$home_type == 2] <- 'apartment' 
hackdf$home_type[hackdf$home_type == 3] <- 'one-story' 
hackdf$home_type[hackdf$home_type == 4] <- 'two-story' 
hackdf$home_type[hackdf$home_type == 5] <- 'others' 

#Changig col name from S4 to no_of_rooms
colnames(hackdf)[colnames(hackdf)=="S4"] <- "no_of_rooms"

#Changig col name from S5 to owenership_status
colnames(hackdf)[colnames(hackdf)=="S5"] <- "owenership_status"

#Changig data
hackdf$owenership_status[hackdf$owenership_status == 1] <- 'rented'
hackdf$owenership_status[hackdf$owenership_status == 2] <- 'owned'
hackdf$owenership_status[hackdf$owenership_status == 3] <- 'alloted'


#Changig col name from S7 to edu_level
colnames(hackdf)[colnames(hackdf)=="S7"] <- "edu_level"

#Changig data
hackdf$edu_level[hackdf$edu_level == 1] <- 'illterate'
hackdf$edu_level[hackdf$edu_level == 2] <- 'ls_primary'
hackdf$edu_level[hackdf$edu_level == 3] <- 'ls_metric'
hackdf$edu_level[hackdf$edu_level == 4] <- 'metric'
hackdf$edu_level[hackdf$edu_level == 5] <- 'intermediate'
hackdf$edu_level[hackdf$edu_level == 6] <- 'graduate'
hackdf$edu_level[hackdf$edu_level == 7] <- 'post_graduate'

hackdf$Q1 <- NULL 

#-----------Split GPS Into Lat and Lng------------#
library(tidyverse)
hackdf <- separate(hackdf, GPS, c("gps_lat", "gps_lang"), sep=",")
View(hackdf)


#--------------Ihtsham file------------------------------

#Reading CSV file
hackdfi <- read.csv("hackdftested.csv")

#Creating Linear Model
lmMod <- lm(data = hackdfi, Amount ~ no_of_rooms + high_kw_app + Urban_Peri.Urban)
summary(lmMod)      
#Accuracy = 86% 

#Cross Validation
set.seed(100)
trainingRowIndex <- sample(1:nrow(hackdfi), 0.7*nrow(hackdfi))  # row incices for training data
trainingData <- hackdf[trainingRowIndex, ]  # model training data
testData  <- hackdf[-trainingRowIndex, ]   # test data


#Build the model on training data

lmMod <- lm(Amount ~ no_of_rooms + high_kw_app + Urban_Peri.Urban, data=trainingData)  # build the model
distPred <- predict(lmMod, testData)  # predict distance
summary (lmMod)

AIC(lmMod) 
BIC(lmMod)


actuals_preds <- data.frame(cbind(actuals=testData$Amount, predicteds=distPred))  # make actuals_predicteds dataframe.
correlation_accuracy <- cor(actuals_preds)

min_max_accuracy <- mean (apply(actuals_preds, 1, min) / apply(actuals_preds, 1, max))
#Accuracy of Validation Model = 86% 



#K fold cross validation

library(DAAG)
par(new=TRUE); par(bg="aliceblue"); par(mar=c(4,4,4,4))

# Check if the dashed lines are parallel and small and big symbols are not over dispersed for any one specific color.

cvResults <- suppressWarnings(CVlm(data = hackdfi, form.lm=Amount ~ no_of_rooms + high_kw_app + Urban_Peri.Urban, m=5, dots=FALSE, seed=29, legend.pos="topleft",  printit=FALSE, main="Small symbols are predicted values while bigger ones are actuals."))
attr(cvResults, 'ms')


#-----------------Shazil File------------------------
temp <- read.csv('hackdftest.csv', header = TRUE)


head(temp)

temp$winter[temp$winter > 0] <- 'TRUE' 
temp$winter[temp$winter == 0] <- 'FALSE' 
class(temp$Urban_Peri.Urban)
temp$winter<- as.factor(temp$winter)
levels(temp$Urban_Peri.Urban)

temp_121 <- select(temp,  -Region, -District, -city, -Province, -Belts)

tempfit <- lm(data = temp_121, Amount ~ .)
summary(tempfit)

library(relaimpo)

varImp(tempfit)
tempfit <- lm(data = temp_121, Amount ~ no_of_rooms  + high_kw_app +
                Repairing.House_Rent + med_kw_app)

predicted <- predict(tempfit, temp_121)
plot(temp_121$Amount, predicted, col = c('blue', 'red'), pch = 19)

############## Testing and training Data ###################

library(randomForest)

ran_for_tem <- randomForest(data = temp_121, Amount ~ no_of_rooms  + high_kw_app + high_kw_app )
summary(ran_for_tem)

full_ran_for <- randomForest(data = temp_121, Amount ~ .)

predicted2 <- predict(full_ran_for, temp_121)
predicted1 <- predict(ran_for_tem, temp_121)

library(caret)

postResample(predicted1, temp_121$Amount) #getting R square

postResample(predicted2, temp_121$Amount)

train <- sample(1:nrow(temp_121), 0.7*nrow(temp_121)) #row indices for training data 

trainingData <- temp_121[train,] #model training data

testData <- temp_121[-train,] #test data

new_fit <- lm(data = trainingData, Amount ~ no_of_rooms  + high_kw_app +
                Repairing.House_Rent + med_kw_app)
unique(temp$ES20)
validate <- predict(new_fit, testData)
postResample(validate, testData$Amount)


#Boxplots


boxplot(temp$Amount ~ temp$winter)

boxplot(temp$Amount ~ temp$high_kw_app)

boxplot((temp$Amount ~ temp$no_of_rooms))

boxplot(temp$Amount ~ temp$Repairing.House_Rent)

boxplot(temp$Amount ~ temp$med_kw_app)

boxplot(temp$Amount ~ temp$Urban_Peri.Urban)



rfit <- randomForest(data = temp_121, Amount ~ no_of_rooms  + high_kw_app +
                       Repairing.House_Rent + med_kw_app)
val <- predict(rfit, testData)
postResample(val, testData$Amount)


#-------------Usman File--------------
















#-------------Usman file ends---------


























