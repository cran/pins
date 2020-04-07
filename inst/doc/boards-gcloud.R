## ----setup, echo=FALSE---------------------------------------------------
library(pins)

## ----eval=FALSE----------------------------------------------------------
#  board_register_gcloud(bucket = "pinscontainer")

## ----eval=FALSE----------------------------------------------------------
#  board_register("gcloud", bucket = "pinscontainer")

## ----eval=FALSE----------------------------------------------------------
#  pin(iris, description = "The iris data set", board = "gcloud")
#  pin(mtcars, description = "The motor trend cars data set", board = "gcloud")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris", board = "gcloud")

## ----eval=FALSE, echo=FALSE----------------------------------------------
#  pin_get("https://storage.googleapis.com/pinscontainer/iris/data.csv", board = "gcloud")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris/data.csv", board = "gcloud")

## ----eval=FALSE----------------------------------------------------------
#  pin_find("data", board = "gcloud")

