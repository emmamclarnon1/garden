library(lubridate)
library(tidyverse)
#install.packages("DT")

today="2019-01-16"
today=ymd(today)

#Make dataframe
veg=c("Onions", "Garlic", "Asparagus")
sown=c(today)
harv=(today+months(6))
h2=today-years(1)
harvest=c(harv,harv,h2)
plants=data.frame(veg,sown,harvest)
names(plants)=c("Vegetable", "Date_Sown", "Harvest_Date")

str(plants)



library(DT)
plants2=plants%>%
  mutate(ready=case_when(Harvest_Date >= today() ~ "Not yet", TRUE~"Harvest"))
    
datatable(plants2) %>% formatStyle("ready",
  backgroundColor = styleEqual(c("Not yet", "Harvest"), c('white', 'yellow'))
)


