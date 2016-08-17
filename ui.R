
## Course Project data products Shiny application"
## Author: "Pradeep K. Pant, ppant@cpan.org"
## date: "Aug 10, 2016"
## Build User interface (ui.R), which will control the layout and appearance 

## Load Shiny library
library(shiny)

# We will analyse Water Quality Data Set taken from https://data.gov.in and will show state-wise analysis on some parameters
# First make UI for the application 

shinyUI(fluidPage(
  # Application title
  titlePanel("Analyzing Water Quality levels of River Ganga (India) in various states on-route (Year 2012)"),
  br(),
  br(),
  

    sidebarPanel(
      helpText("Analyse Water Quality of River Ganga (State wise)"),
      selectInput("var", 
                  label = "Choose an state",
                  choices = c("UTTARANCHAL", "UTTAR PRADESH",
                              "BIHAR", "WEST BENGAL"),
                  selected = "UTTARANCHAL"),
      helpText("On based of the state selected we'll populate a table on right hand side with crucial parameters of the water of Ganga River and below the data table we'll make a plot of Coliform bacteria in different states on based of water sample")),
      br(),
      br(),
# Call Data table    
mainPanel(dataTableOutput('Details'),
# Pass state name
textOutput("text1"),
br(),
br(),
# Plot coliform levels state-wise
plotOutput("plot1"))
)
)
