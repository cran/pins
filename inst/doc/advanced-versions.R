## ----eval=FALSE----------------------------------------------------------
#  pin("https://raw.githubusercontent.com/facebook/prophet/master/examples/example_retail_sales.csv",
#      name = "retail_sales")

## ----eval=FALSE----------------------------------------------------------
#  pin_info("retail_sales", signature = TRUE)

## ----eval=FALSE----------------------------------------------------------
#  pin("https://raw.githubusercontent.com/facebook/prophet/master/examples/example_retail_sales.csv",
#      signature = "5f7e575b23e3bb4a802358864be2dbc665ef1ab8")

## ----eval=FALSE----------------------------------------------------------
#  pin_versions("new-york-city/nypd-motor-vehicle-collisions", board = "kaggle")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("new-york-city/nypd-motor-vehicle-collisions", version = 3, board = "kaggle")

## ----eval=FALSE----------------------------------------------------------
#  board_register("local", versions = TRUE)

## ----eval=FALSE----------------------------------------------------------
#  # store iris as mtcars dataset
#  pin(iris, "mtcars", description = "the mtcars dataset")
#  
#  # oops! we meant mtcars as mtcars
#  pin(mtcars, "mtcars", description = "the mtcars dataset")

## ----eval=FALSE----------------------------------------------------------
#  pin_versions("mtcars", board = "local")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("mtcars", version = "d93d422", board = "local")

