## ----setup, echo=FALSE---------------------------------------------------
library(pins)

## ----eval=FALSE----------------------------------------------------------
#  board_register_dospace(space = "pinstest",
#                         key = "AAAAAAAAAAAAAAAAAAAA",
#                         secret = "ABCABCABCABCABCABCABCABCABCABCABCABCABCA==",
#                         datacenter = "sfo2")

## ----eval=FALSE----------------------------------------------------------
#  board_register("dospace", space = "pinstest",
#                            key = "AAAAAAAAAAAAAAAAAAAA",
#                            secret = "ABCABCABCABCABCABCABCABCABCABCABCABCABCA==",
#                            datacenter = "sfo2")

## ----eval=FALSE----------------------------------------------------------
#  pin(iris, description = "The iris data set", board = "dospace")
#  pin(mtcars, description = "The motor trend cars data set", board = "dospace")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris", board = "dospace")

## ----eval=FALSE, echo=FALSE----------------------------------------------
#  pin_get("https://pinstest.region.digitaloceanspaces.com/iris/data.csv", board = "dospace")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris/data.csv", board = "dospace")

## ----eval=FALSE----------------------------------------------------------
#  pin_find("data", board = "dospace")

