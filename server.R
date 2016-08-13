
## Course Project data products Shiny application"
## author: "Pradeep K. Pant, ppant@cpan.org"
## date: "Aug 10, 2016"
## Server side logic (server.R) to build the appx

## Load Shiny library
library(shiny)
library(datasets)
library(dplyr)

# Server logic 
shinyServer(function(input, output) {
  
  output$Details <- renderDataTable({
    data <- transmute(WaterQualityRiverGanga2012, PH = V12, Temperature = V4,
                      Conductivity = V15, Coliform = V26, Nitrate = V20)
    data
  }, options = list(lengthMenu = c(5, 10, 20), pageLength = 10))
})