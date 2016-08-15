
## Course Project data products Shiny application"
## author: "Pradeep K. Pant, ppant@cpan.org"
## date: "Aug 10, 2016"
## Server side logic (server.R) to implement event fired by UI

## Load Shiny library
library(shiny)
library(datasets)
library(dplyr)
library(ggplot2)

# Server logic 
# We will analyse Water Quality Data Set taken from https://data.gov.in and will show state-wise analysis on some parameters

shinyServer(function(input, output) {
  # We'll render the selected columns of our dataset and will use datatable techniques to filter and search data
  output$Details <- renderDataTable({
    # We need the selected text e.g.; state name from ui.R
    output$text1 <- renderText({ 
    })
    # Read our dataset (checking water quality of the river ganga)
    WaterQualityRiverGanga2012 <- read.csv("water_quality_2012_river_ganga.csv", header=FALSE)
    WaterQualityRiverGanga2012<-WaterQualityRiverGanga2012[-1,]
    # filter based on the state name
    WaterQualityRiverGanga2012 <- filter(WaterQualityRiverGanga2012, V3 == input$var)
    # fill datatable based on the col selected
    data <- transmute(WaterQualityRiverGanga2012, PH = V12, Temperature = V4, Conductivity = V15, Coliform = V26, Nitrate = V20)
    data
    # Implement page wise menu
  }, options = list(lengthMenu = c(5, 10, 20), pageLength = 10))
  
  # Finally lets use ggplot2 to demonstrate the coliform bacteria level in various states 
    output$plot1 <- renderPlot({
    WaterQualityRiverGanga2012 <- read.csv("water_quality_2012_river_ganga.csv", header=FALSE)
    WaterQualityRiverGanga2012<-WaterQualityRiverGanga2012[-1,]
    p<-qplot(WaterQualityRiverGanga2012$V3,WaterQualityRiverGanga2012$V26, data=WaterQualityRiverGanga2012, color=WaterQualityRiverGanga2012$V3, main = "State wise coliform bacteria in water sample",xlab = "State name",ylab="Coliform Value")
    p + theme_bw()
    p + theme(axis.title=element_text(face="bold.italic", size="12", color="brown"), legend.position="top") 
    p + guides(fill=guide_legend(title="State wise coliform value"))
  })
})