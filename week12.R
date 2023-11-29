＃Creating a vector of number
numbers<-c(12,20,37,43,51)

#to print each value

print(numbers[[1]])
print(numbers[[2]])
print(numbers[[3]])
print(numbers[[4]])
print(numbers[[5]])

#pattern
# .x from 1 to 5

for( xy in c(1,2,3,4,5))
{
  print(numbers[[xy]])
}

howManyTimes = 5
for(.x in 1: howManyTimes)
{
  print(.x)
}


#pattern
howManyTimes=length(dataSet)
##如何決訂howManyTimes? depand on data長度

for( .x in 1:howManyTimes)
{
  print(length(dataSet[[.x]]$children))
}


##the better way: .x in seq_along(dataSet)

#example
dataSet <- list(
  list(
    gender="male", height=178, age=32,
    children=list(
      list(gender="male", age=5),
      list(gender="male", age=0))
  ),
  list(
    gender="female", height=166, age=30,
    children=list(
      list(gender="female", age=3))
  ),
  list(
    gender="male", height=170, age=42,
    children=list(
      list(gender="male", age=10),
      list(gender="female", age=8))
  ),
  list(
    gender="male", height=188, age=22,
    children=list()
  ),  
  list(
    gender="male", height=172, age=52,
    children=list(
      list(gender="female", age=25),
      list(gender="female", age=23))
  ),
  list(
    gender="female", height=160, age=42,
    children=list(
      list(gender="female", age=11))
  )
)

for(.x in seq_along(dataSet)){
  numberOfChildren <-length((dataSet[[.x]]$children))
  print(numberOfChildren)
}

##[result storage vector]:save print(numberOfChildren)

results1<-vector("integer", 6)
for(.x in seq_along(dataSet)){
  numberOfChildren <-length((dataSet[[.x]]$children))
  print(numberOfChildren)
  results1[[.x]]<- numberOfChildren
}



results2<-vector("list", 6) ##[result storage (較複雜的值)]
for(.x in seq_along(dataSet)){
  results2[[.x]]<- dataSet[[.x]]$children
}

results2

#flightsData
flights<-readRDS("data/flights_week10.rds")
flightsData<-flights$data[[1]]$data_frame
#split according to AirlineID
flightsData|>
  split(
    flightsData$AirlineID
  )->split_data
numberOfFllights<-vector("integer", length(split_data))
for(.x in seq_along(split_data)){
  numberOf()
}