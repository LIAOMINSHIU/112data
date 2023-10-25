flights =readRDS("week7/flights.rds")

flightsData <-flights$data[[1]]$data_frame
dplyr::glimpse(flightsData)


fct_DepartureTime <- factor(DepartureTime)
class(DepartureAirportID)
fct_DepartureAirportID <- factor(DepartureAirportID) 

# summerise AirlineID
levels(flightsData$AirlineID) 
levels(flightsData$AirlineID) |> length()##計算有多少個AIRLINEID
##等同於
length(level(flightsData$AirlineID))
sum(c(29,23,1,17))
c(29, 23,1,17)|>sum()
##計算每個類有幾個：如下
c(1,2,2,4,6,4,6)|>table()
##1 2 4 6 
##1 2 2 2 

flightsData$AirlineID |> table()->tb_airlineID
class(tb_airlineID)
typeof(tb_airlineID)
##把資料排序(預設由小到大) 格式：sort(x, decreasing = FALSE, ...)
tb_airlineID|>sort()
sort(tb_airlineID)
##若要由大到小
tb_airlineID|>sort(decreasing = TRUE)
sort(tb_airlineID,decreasing = TRUE)
