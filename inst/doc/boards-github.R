## ----setup, echo=FALSE---------------------------------------------------
library(pins)

## ----eval=FALSE----------------------------------------------------------
#  nchar(Sys.getenv("GITHUB_PAT")) > 0

## ----eval=FALSE----------------------------------------------------------
#  library(pins)
#  board_register_github(repo = "owner/repo")

## ----eval=FALSE----------------------------------------------------------
#  board_register("github", repo = "owner/repo")

## ----eval=FALSE----------------------------------------------------------
#  board_register_github(repo = "owner/repo", token = "<new-token>")

## ----eval=FALSE----------------------------------------------------------
#  pin(iris, description = "The iris data set", board = "github")
#  pin(mtcars, description = "The motor trend cars data set", board = "github")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris", board = "github")

## ----eval=FALSE----------------------------------------------------------
#  pin_find("motor", board = "github")

