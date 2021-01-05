## ----setup, echo=FALSE---------------------------------------------------
library(pins)

## ----eval=FALSE----------------------------------------------------------
#  board_register_s3(bucket = "pinsbucket",
#                    key = "AAAAAAAAAAAAAAAAAAAA",
#                    secret = "ABCABCABCABCABCABCABCABCABCABCABCABCABCA==")

## ----eval=FALSE----------------------------------------------------------
#  board_register("s3", bucket = "pinsbucket",
#                       key = "AAAAAAAAAAAAAAAAAAAA",
#                       secret = "ABCABCABCABCABCABCABCABCABCABCABCABCABCA==")

## ----eval=FALSE----------------------------------------------------------
#  board_register("s3", bucket = "pinsbucket",
#                       key = "AAAAAAAAAAAAAAAAAAAA",
#                       secret = "ABCABCABCABCABCABCABCABCABCABCABCABCABCA==",
#                       region = "us-west-2")

## ----eval=FALSE----------------------------------------------------------
#  pin(iris, description = "The iris data set", board = "s3")
#  pin(mtcars, description = "The motor trend cars data set", board = "s3")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris", board = "s3")

## ----eval=FALSE, echo=FALSE----------------------------------------------
#  pin_get("https://pinsbucket.region.amazonaws.com/iris/data.csv", board = "s3")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris/data.csv", board = "s3")

## ----eval=FALSE----------------------------------------------------------
#  pin_find("data", board = "s3")

