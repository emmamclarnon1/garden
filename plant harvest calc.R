library(lubridate)

#Make dataframe
veg=c("Onions", "Garlic", "Asparagus")
sown=c(today(),today(),today())
harv=(today()+months(6))
h2=today()+years(3)
harvest=c(harv,harv,h2)
plants=data.frame(veg,sown,harvest)
names(plants)=c("Vegetable", "Date Sown", "Harvest Date")

str(plants)
