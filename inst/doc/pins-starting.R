## ----eval=FALSE, echo=FALSE----------------------------------------------
#  nomnoml::nomnoml("
#  #direction: right
#  #edgeMargin: 4
#  #padding: 25
#  #fontSize: 18
#  #.dashed: dashed
#  [<dashed>Discover] --> [<dashed>Cache]
#  [<dashed>Cache] --> [Import]
#  [Import] -> [Understand]
#  [Understand |
#    [Wrangle] -> [Visualize]
#    [Visualize] -> [Model]
#    [Model] -> [Wrangle]
#  ]
#  [Understand] -> [Communicate]
#  [Communicate] --> [<dashed>Share]", "images/pins-starting-overview.png")

## ----eval=FALSE----------------------------------------------------------
#  library(pins)
#  pin_find("boston housing")

## ----eval=FALSE----------------------------------------------------------
#  pin_get("BSDA/Housing")

## ----eval=FALSE----------------------------------------------------------
#  pin("http://www.fhfa.gov/datatools/downloads/documents/hpi/hpi_master.csv")

## ----eval=FALSE----------------------------------------------------------
#  library(readr)
#  pin("http://www.fhfa.gov/datatools/downloads/documents/hpi/hpi_master.csv") %>%
#    read_csv(col_types = cols())

## ----eval=FALSE----------------------------------------------------------
#  pin("http://www.fhfa.gov/datatools/downloads/documents/hpi/hpi_master.csv",
#      name = "home_price_indexes")
#  
#  pin_get("home_price_indexes") %>%
#    read_csv(col_types = cols())

## ----eval=FALSE----------------------------------------------------------
#  board_list()

## ----eval=FALSE----------------------------------------------------------
#  pin_get("home_price_indexes") %>%
#    read_csv(col_types = cols()) %>%
#    dplyr::group_by(yr) %>%
#    dplyr::count() %>%
#    pin("home_price_analysis")

