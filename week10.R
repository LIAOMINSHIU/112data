flights <- readRDS("data/flights_week10.rds")
flightsData <- flights$data[[1]]$data_frame
dplyr::glimpse(flightsData)

##how many time zone?
# Get unique time zones
##solution1
unique_time_zones <- unique(flightsData$DepartureTimeZone)
unique_time_zones 
##solution2
flightsData$DepartureTimeZone|>table()|>sort(decreasing=T)->tb_departureTimeZone

##Create a list called tb_departureTimeZone, where flights$dataSummary$DepartureTimeZone will show the previous question's result.
flights$dataSummary$DepartureTimeZone<-tb_departureTimeZone


# Count the number of unique time zones
num_time_zones <- length(unique_time_zones)
num_time_zones 
# Display the number of time zones
cat("Number of time zones:", num_time_zones, "\n")

# Count observations per time zone
observations_per_time_zone <- table(flightsData$DepartureTimeZone)

# Display observations per time zone
cat("Observations per time zone:\n")
print(observations_per_time_zone)


##split data(for each sub data frame)
flightsData|>split(flightsData$DepartureTimeZone)->split_flightsData

View(split_flightsData)
x=1
split_flightsData[[x]]|>dplyr::glimpse()
split_flightsData[[x]]|>View()

split_flightsData[[x]]$DepartureTime<-
lubridate::ymd_hm(
  split_flightsData[[x]]$DepartureTime , 
  tz=split_flightsData[[x]]$DepartureTimeZone[[1]]
)

split_flightsData[[x]]$DepartureTime

split_flightsData[[x]]|>dplyr::glimpse()
x=1
split_flightsData[[x]]|>
dplyr::mutate(
DepartureTime=
  lubridate::ymd_hm(
    DepartureTime , 
    tz=DepartureTimeZone[[1]]
  )
)
split_flightsData[[x]]



#for every x
flightsData|>
  dplyr::group_by(DepartureTimeZone)|>
  dplyr::mutate(
    DepartureTime=
      lubridate::ymd_hm(
        DepartureTime , 
        tz=DepartureTimeZone[[1]]
      )
  )|>dplyr::ungroup()->flightsData


View(flightsData$DepartureTimeZone)
dplyr::glimpse(flightsData$DepartureTimeZone)

##complete steps

flights$Data[[1]]$data_frame<-flightsData
saveRDS(flights, flie="data/flights_week11.rds")
