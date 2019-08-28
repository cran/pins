## ----eval=FALSE----------------------------------------------------------
#  library(pins)
#  
#  model <- lm(iris)
#  pin(model, name = "iris-lm")

## ----eval=FALSE----------------------------------------------------------
#  pin.lm <- function(x, name = NULL, description = NULL, board = NULL, ...) {
#    path <- tempfile()
#    dir.create(path)
#    on.exit(unlink(path))
#  
#    # save model
#    saveRDS(x, file.path(path, "model.rds"), version = 2)
#  
#    # save summary
#    writeLines(capture.output(summary(lm(iris))), file.path(path, "summary.txt"))
#  
#    # save residuals vs fitted plot
#    grDevices::png(file.path(path, "residuals.png"))
#    plot(x)
#    dev.off()
#  
#    metadata <- list(
#      formula = deparse(formula(x))
#    )
#  
#    board_pin_store(board, path, name, description, "linear_model", metadata, ...)
#  }
#  
#  pin_load.linear_model <- function(path, ...) {
#    readRDS(file.path(path, "model.rds"))
#  }

## ----eval=FALSE----------------------------------------------------------
#  model <- lm(iris)
#  
#  # pin to local board
#  pin(model, name = "iris-lm")
#  
#  # pin to github
#  pin(model, name = "iris-lm", board = "github")
#  
#  # pin to rstudio connect
#  pin(model, name = "iris-lm", board = "rsconnect")

