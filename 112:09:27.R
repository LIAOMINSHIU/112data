# ｜Basic Date Type(分節🔻) -----
c("John", "Mary")
c(2, 3.1412)
c(TRUE, TRUE, F, T)# can interchange between T or TRUE, F or FLASE
# 註記NOTES:using c() to collect your value
typeof(c("John", "Mary"))
#"character"
typeof(list("John", 178, TRUE))
#"list"

# ｜Binding ----
personName = c("John", "Mary")
interestingNumber = c(2, 3.1412)
covidPositive = c(TRUE, TRUE, F)

# 【name call】 to access value
personName
interestingNumber
covidPositive

# Retrieve ONE element value----
# using [[]] double bracket (只️能取一個值)
# by position / index
personName[[1]]
personName[[2]]


list("John", 178, TRUE)
listExample = list("John", 178, TRUE)
listExample

listExample[[3]]

# Name your element values----
## name: John, age:38, height:178, isMarried: False
recordExample1=list("Jhon", 38, 178, FALSE)
recordExample2=list(
  "name"="Jhon",
  "age"=38,
  "height"=178,
  "is married"=F
)

recordExample1[[1]]
recordExample2[[1]]
recordExample2$name
recordExample2[["name"]]
