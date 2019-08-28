## ----setup, echo=FALSE---------------------------------------------------
library(pins)

## ----eval=FALSE----------------------------------------------------------
#  board_register_kaggle(token = "path/to/kaggle.json")

## ----eval=FALSE----------------------------------------------------------
#  board_register("kaggle", token = "path/to/kaggle.json")

## ----eval=FALSE----------------------------------------------------------
#  pin(iris, description = "The iris data set", board = "kaggle")
#  pin(mtcars, description = "The motor trend cars data set", board = "kaggle")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris-pin", board = "kaggle")

## ----eval=FALSE----------------------------------------------------------
#  pin_find("motor", board = "kaggle")

