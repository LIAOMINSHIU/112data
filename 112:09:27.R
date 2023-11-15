# Basic Date Type(標題：分節🔻) -----
c("John", "Mary")
c(2, 3.1412)
c(TRUE, TRUE, F, T)# can interchange between T or TRUE, F or FLASE
# 註記NOTES:using c() to collect your value
typeof(c("John", "Mary"))
#"character"
typeof(list("John", 178, TRUE))
#"list"

# Binding ----
personName = c("John", "Mary")
personName <- c("John", "Mary")
c("John", "Mary") -> personName 

interestingNumber = c(2, 3.1412)
covidPositive = c(TRUE, TRUE, F)

# 【name call】 to access value
personName
interestingNumber
covidPositive

# Retrieve 【ONE】 element value----
# using [[]] double bracket (只️能取一個值
# by position / index
personName[[1]]
personName[[2]]


list("John", 178, TRUE)
listExample = list("John", 178, TRUE)
listExample

listExample[[3]]

# Name your element values----
## name: John, age:38, height:178, isMarried: False(副標題）----
recordExample1=list("Jhon", 38, 178, FALSE)
recordExample2=list(
  "name"="Jhon",
  "age"=38,
  "height"=178,
  "is married"=F
)

recordExample2=list(
  name="Jhon",
  age=38,
  height=178,
  "is married"=F
)
recordExample1[[1]]#position
recordExample2[[1]]
recordExample2$name
recordExample2[["name"]]#title

#Retrieve 【multiple】 element values----
#by Position/ Index
#using [c()] one bracket
listExample
listExample[c(1,3)]
listExample[c(1,2)]

atomicExample <- c(1, 4, 78, 455, -23) #same type
atomicExample
atomicExample[c(1,3,4)]
atomicExample[c(1,2,3,4)]
atomicExample[c(1:4)] #取第1-4的位置值
atomicExample[c(2:5)] #取第2-5的位置值
## by element names ----
recordExample2
recordExample2[c("name","height", "is married")]

# nested list----
person1 = list(
  "name"="Jhon",
  "age"=38,
  "height"=178,
  "is married"=F
)
person2 = list(
  "name"="Mary",
  "age"=32,
  "height"=168,
  "is married"=T
)
collective_data = list(
  person1, #name call on person1
  person2
)

collective_data = list(
  list(
    "name"="Jhon",
    "age"=38,
    "height"=178,
    "is married"=F
  ),
  list(
    "name"="Mary",
    "age"=32,
    "height"=168,
    "is married"=T
  )
)#等同於line75-90

# Sequential Retrieval ----
## Retrieve the 2nd person's data and tell me his/her name
collective_data[[2]][["name"]]
collective_data[[2]]$name
##Retrieve the 2nd person's data and tell me his/her name and marriage status(multiple element)
collective_data[[2]][c("name","is married")]
collective_data[[2]]$name
class(collective_data)
typeof(collective_data)
View(collective_data)


data.frame(
  name = c("Mary", "John"),
  grade = c(3, 4)
)
class(data.frame)
typeof(data.frame)
