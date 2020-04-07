## ----setup, echo=FALSE---------------------------------------------------
library(pins)

## ----eval=FALSE----------------------------------------------------------
#  board_register_azure(container = "pinscontainer",
#                       account = "pinsstorage",
#                       key = "ABCABCABCABCABCABCABCABCABCAB==")

## ----eval=FALSE----------------------------------------------------------
#  board_register("azure", container = "pinscontainer",
#                          account = "pinsstorage",
#                          key = "ABCABCABCABCABCABCABCABCABCAB==")

## ----eval=FALSE----------------------------------------------------------
#  pin(iris, description = "The iris data set", board = "azure")
#  pin(mtcars, description = "The motor trend cars data set", board = "azure")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris", board = "azure")

## ----eval=FALSE, echo=FALSE----------------------------------------------
#  pin_get("https://pinsstorage.blob.core.windows.net/pinscontainer/iris/data.csv", board = "azure")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris/data.csv", board = "azure")

## ----eval=FALSE----------------------------------------------------------
#  pin_find("data", board = "azure")

