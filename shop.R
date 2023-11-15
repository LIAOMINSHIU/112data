target <- 
  sample(c("foodpandaMenu_r9uz.json", "foodpandaMenu_r9vy.json", "foodpandaMenu_r9wg.json"),1)
chosenJson <-paste0("https://raw.githubusercontent.com/tpemartin/112-1-programming-for-data-science/main/data/"
                    ,target)
shop <- jsonlite::fromJSON(chosenJson)

shop$data$cuisines[[1]]

shop[["data"]][["menus"]][["menu_categories"]][[1]][["products"]][[1]]
names(shop)
     