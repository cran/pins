## ----setup, echo=FALSE---------------------------------------------------
library(pins)

## ----eval=FALSE----------------------------------------------------------
#  board_register_rsconnect()

## ----eval=FALSE----------------------------------------------------------
#  board_register("rsconnect")

## ----eval=FALSE----------------------------------------------------------
#  # register when multiple servers are available
#  board_register_rsconnect(server = "https://rstudio-connect-server")
#  
#  # register when multiple accounts are available
#  board_register_rsconnect(account = "account-name")

## ----eval=FALSE----------------------------------------------------------
#  pin(iris, description = "The iris data set", board = "rsconnect")
#  pin(mtcars, description = "The motor trend cars data set", board = "rsconnect")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("iris", board = "rsconnect")

## ----eval=FALSE----------------------------------------------------------
#  pin_find("mt", board = "rsconnect")

## ----eval=FALSE----------------------------------------------------------
#  pin_find(board = "rsconnect", extended = TRUE)

## ----eval=FALSE----------------------------------------------------------
#  pin_info("mtcars", board = "rsconnect")

## ----eval=FALSE----------------------------------------------------------
#  pin("https://rstudio-connect-server/content/1234", name = "my-rsc-content")

## ----eval=FALSE----------------------------------------------------------
#  # create a publicly visible pin
#  pin("https://rstudio-connect-server/content/1234", name = "my-rsc-content", access_type = "all")

## ----eval=FALSE----------------------------------------------------------
#  board_register_rsconnect(key = "the-rstudio-connect-api-key",
#                           server = "https://rstudio-connect-server")

