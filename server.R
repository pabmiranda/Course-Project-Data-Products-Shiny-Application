
## Course Project data products Shiny application"
## author: "Pradeep K. Pant, ppant@cpan.org"
## date: "Aug 10, 2016"
## Server side logic (server.R) to build the appx

## Load Shiny library
library(shiny)

# Server logic 
shinyServer(function(input, output) {
   
  # output$distPlot <- renderPlot({
  #   
  #   # generate bins based on input$bins from ui.R
  #   x    <- faithful[, 2] 
  #   bins <- seq(min(x), max(x), length.out = input$bins + 1)
  #   
  #   # draw the histogram with the specified number of bins
  #   hist(x, breaks = bins, col = 'darkgray', border = 'white')
  #   
  # })
  
})
