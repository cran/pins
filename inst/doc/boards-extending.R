## ----eval=FALSE, echo=FALSE----------------------------------------------
#  nomnoml::nomnoml("
#  #padding: 10
#  #spacing: 22
#  [Pin]->[Create]
#  [Create]->[Board]
#  [Pin]<-[Find]
#  [Find]<-[Board]
#  [Pin]<-[Retrieve]
#  [Retrieve]<-[Board]
#  [Pin]->[Remove]
#  [Remove]->[Board]", "images/boards-extending-overview.png")

## ------------------------------------------------------------------------
board_initialize.folder <- function(board, ...) {
  if (!dir.exists("pins")) dir.create("pins")
  board
}

board_pin_create.folder <- function(board, path, name, ...) {
  dir.create(file.path("pins", name), recursive = TRUE, showWarnings = FALSE)
  file.copy(dir(path, full.names = TRUE), file.path("pins", name), recursive = TRUE)
}

board_pin_get.folder <- function(board, name, ...) {
  file.path("pins", name)
}

board_pin_find.folder <- function(board, text, ...) {
  data.frame(name = dir("pins", text), stringsAsFactors = F)
}

board_pin_remove.folder <- function(board, name, ...) {
  unlink(file.path("pins", name), recursive = TRUE)
}

## ------------------------------------------------------------------------
board_pin_versions.folder <- function(board, name, ...) {
  data.frame( 
     version = 1
  )
}

board_pin_get.folder <- function(board, name, version = NULL, ...) {
  if (!is.null(version)) message("Version ", version, " requested!")
  file.path("pins", name)
}

## ------------------------------------------------------------------------
library(pins)
board_register("folder")

pin(iris, board = "folder")
pin_get("iris", board = "folder")

## ----eval=FALSE----------------------------------------------------------
#  #' @importFrom pins board_initialize
#  #' @export
#  pins::board_initialize
#  
#  #' @importFrom pins board_pin_create
#  #' @export
#  pins::board_pin_create
#  
#  #' @importFrom pins board_pin_get
#  #' @export
#  pins::board_pin_get
#  
#  #' @importFrom pins board_pin_find
#  #' @export
#  pins::board_pin_find
#  
#  #' @importFrom pins board_pin_remove
#  #' @export
#  pins::board_pin_remove
#  
#  #' @importFrom pins board_pin_versions
#  #' @export
#  pins::board_pin_versions

