#review----
flights = readRDS("data/flight.rds")


str(flights)

#retrieve data frame for analysis----
flightsData <- flights$data[[1]]$data_frame
#for list $name is the same as[["name"]]
flights[["data"]][[1]][["data_frame"]]

flightsData

##data frame vs list----
grades <- data.frame(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)

grades_list <- list(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)

##retrieve data frame vs list----

grade$student
grades[["student"]]
grades[, "student"] # retrieve entire student column
grades[, c("student", "midterm")] # retrieve both colums student and midterm 
grades[c(1,3), "student"] # retrieve student column for rows 1 and 3
grades[c(1,3), c("student", "midterm")] # retrieve student and midterm columns for rows 1 and 3


grades_list$student
grades_list[["list"]]

##glimpse our data----
dplyr::glimpse(flightsData)
flightsData[,c("AirlineID","CodeShare","DepartureTime")]

##check element names----
names(flightsData)


##class of elements(check the element 的性質)----
class(flightsData$AirlineID)
class(flightsData$ScheduleStartDate)

head(flightsData$AirlineID) #head 用來看前六個資訊
head(flightsData$ScheduleStartDate)


bloodTypes <- c("AB", "AB", "A", "B", "A", "A", "B", "O", "O", "AB")
householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)

class(householdIncomes)

householdIncomes[[1]]
householdIncomes[[1]]<"high income" #compare the level of high and middle
householdIncomes[[1]]<"low income"
#compare strings----
#Avoid comparing two strings with <, >, <=, >=
"high income" < "middle income" 
#When comparing strings, it is comparing the first letter's position in a-z

#parsing----
#teach your computer to understand your values more accurately

householdIncomes #character
fct_householdIncome <- factor(householdIncomes) 
#parse into factor

ord_fct_householdIncome <- ordered(householdIncomes, levels = c("low income", "middle income", "high income")) 
# a vector of levels from smallest to largest

class(fct_householdIncome)
class(ord_fct_householdIncome)

ord_fct_householdIncome[[1]]<"low income"
ord_fct_householdIncome[[1]]<"high income"

#parse airlineID----
class(flightsData$AirlineID)
factor (flightsData$AirlineID)
flightsData$AirlineID<-factor(flightsData$AirlineID)
class(flightsData$AirlineID)

flights$data[[1]]$data_frame<-flightsData
saveRDS(flight, "data/flight.rds")
