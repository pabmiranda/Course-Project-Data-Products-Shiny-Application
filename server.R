
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
shinyServer(function(input, output) {
  
  output$Details <- renderDataTable({
    output$text1 <- renderText({ 
      # paste("You have selected", input$var)
    })
    WaterQualityRiverGanga2012 <- read.csv("water_quality_2012_river_ganga.csv", header=FALSE)
    WaterQualityRiverGanga2012<-WaterQualityRiverGanga2012[-1,]
    WaterQualityRiverGanga2012 <- filter(WaterQualityRiverGanga2012, V3 == input$var)
    
    data <- transmute(WaterQualityRiverGanga2012, PH = V12, Temperature = V4, Conductivity = V15, Coliform = V26, Nitrate = V20)
    data
  }, options = list(lengthMenu = c(5, 10, 20), pageLength = 10))
  output$plot1 <- renderPlot({
   # plot(WaterQualityRiverGanga2012$V3)
  #hist(GangaRiverWaterAnalysis2012)
    WaterQualityRiverGanga2012 <- read.csv("water_quality_2012_river_ganga.csv", header=FALSE)
    WaterQualityRiverGanga2012<-WaterQualityRiverGanga2012[-1,]
    p<-qplot(WaterQualityRiverGanga2012$V3,WaterQualityRiverGanga2012$V26, data=WaterQualityRiverGanga2012, color=WaterQualityRiverGanga2012$V3, main = "State wise coliform bacteria in water sample",xlab = "State name",ylab="Coliform Value")
    p + theme_bw()
    p + theme(axis.title=element_text(face="bold.italic", size="12", color="brown"), legend.position="top") 
    p + guides(fill=guide_legend(title="State wise coliform value"))
  })
})