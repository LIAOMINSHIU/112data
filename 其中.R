flightsData <- jsonlite::fromJSON("https://raw.githubusercontent.com/tpemartin/112-1-programming-for-data-science/main/data/international_flights2.json")

factor(flightsData$AirlineID)->airlineID
length(levels(airlineID))
table(airlineID)->tb_airlineID
sort(tb_airlineID , decreasing=TRUE)->dec_airlineID
dec_airlineID



chineseNumbers <- c("一", "二", "三", "四", "五", "六", "七", "八", "九", "十")

factor(chineseNumbers)->chineseNumbers
order(chineseNumbers, levels=c("一", "二", "三", "四", "五", "六", "七", "八", "九", "十"))->ord_chineseNumbers

ordered(chineseNumbers, levels=chineseNumbers)
tb<-flightsData$AirlineID|>table()|>sort(decreasing=T)
tb

