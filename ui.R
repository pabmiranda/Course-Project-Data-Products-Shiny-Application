
## Course Project data products Shiny application"
## Author: "Pradeep K. Pant, ppant@cpan.org"
## date: "Aug 10, 2016"
## Build User interface (ui.R), which will control the layout and appearance 

## Load Shiny library
library(shiny)

# Define UI for the application 
shinyUI(fluidPage(
  # Application title
  titlePanel("Water Quality of River Ganga (India) in various places on-route (Year 2012)"),
  br(),
  br(),
    sidebarPanel( 
      selectInput("select", label = h3("Choose state(s)"), 
                               choices = list("UTTARANCHAL" = 1, 
                                              "UTTAR PRADESH" = 2, 
                                              "BIHAR" = 3,
                                              "WEST BENGAL"= 4),
                               selected = 1),
      
      selectInput("select", label = h3("Select box"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2,
                                      "Choice 3" = 3), selected = 1)
    ),
  
mainPanel(dataTableOutput('Details'))
)
)
