
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
      helpText("Analyse Water Quality of River Ganga (State wise)"),
      selectInput("var", 
                  label = "Choose an state",
                  choices = c("UTTARANCHAL", "UTTAR PRADESH",
                              "BIHAR", "WEST BENGAL"),
                  selected = "UTTARANCHAL")),
      br(),
      br(),
    
mainPanel(dataTableOutput('Details'),
textOutput("text1"),
br(),
br(),
plotOutput("plot1"))
)
)
