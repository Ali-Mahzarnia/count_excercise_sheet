 path = '/Users/ali/Desktop/Aug23/count_excercise_mouse/Mice\ Inventory_Proteomic.xlsx'

 library(xlsx) 
 
 data= read.xlsx2(path, sheetIndex = 1)
 
 data$age_cat = data$Month
 data$age_cat[as.numeric(data$Month)< median(as.numeric(data$Month))] = "Young"
 data$age_cat[as.numeric(data$Month)>= median(as.numeric(data$Month))] = "Old"
 
 
 table(data$Genotype, data$age_cat)
 