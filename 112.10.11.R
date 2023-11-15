# the way to name eg.my economic grades 
#myEconomicGrades
#my_ecconomic_grades

#import json file
flights <- jsonlite::fromJSON("data/international_flights.json")
View(flights)

##data information----
data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
)
#數據的基本資料命名，以便之後找出數據背景資訊


filepath = flights$data[[1]]$file
flightsData <- jsonlite::fromJSON(filepath)
flights$data[[1]]$data_frame <- flightsData
flights$data[[1]]$data_frame


#flights$data[[1]] #give me the flight data's information

flights <- list(
  data = list(data1) #vector of many data
)

#type and class
typeof(flightsData)
class(flightsData)
flightsData[3,"ScheduleStartDate"]#取資料
flightsData[3,2]

flightsData[c(2,4),c("AirlineID","FlightNumber")]
flightsData[c(1,3,5),c(1,3,5)]


saveRDS(flights, file="data/flight.rds")

typeof(flightsData$AirlineID)
class(flightsData$AirlineID)
class(flights)
