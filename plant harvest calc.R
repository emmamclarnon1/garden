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
plants_1=data.frame(veg,sown,harvest)
names(plants_1)=c("Vegetable", "Date_Sown", "Harvest_Date")

str(plants_1)



library(DT)
plants_2=plants_1%>%
  mutate(ready=case_when(Harvest_Date >= today() ~ "Not yet", TRUE~"Harvest"))
    
datatable(plants_2) %>% formatStyle("ready",
  backgroundColor = styleEqual(c("Not yet", "Harvest"), c('white', 'yellow'))
)


