## ----eval=FALSE----------------------------------------------------------
#  library(pins)
#  pin(mtcars)
#  tibble::tibble(paths = dir(board_local_storage(), full.names = TRUE))

## ----eval=FALSE----------------------------------------------------------
#  pin(mtcars, name = "mtcars", board = "local")
#  pin_get("mtcars", board = "local")

