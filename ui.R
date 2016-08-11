
## Course Project data products Shiny application"
## Author: "Pradeep K. Pant, ppant@cpan.org"
## date: "Aug 10, 2016"
## Build User interface (ui.R), which will control the layout and apperance 

## Load Shiny library
library(shiny)

# Define UI for the application 
shinyUI(fluidPage(
  # Application title
  titlePanel("Prediction analysis app"),
  fluidRow(
    
    
    
    column(3,
           h3("Choose a model"),
           checkboxInput("checkbox", label = "linear model", value = TRUE)),
    
    column(3,
           br(),
           br(),
           br(),
           br(),
           submitButton("Submit"))
    #,
    
    # column(3, 
    #        checkboxGroupInput("checkGroup", 
    #                           label = h3("labeleckbox group"), 
    #                           choices = list("Choice 1" = 1, 
    #                                          "Choice 2" = 2, "Choice 3" = 3),
    #                           selected = 1))  
  ),
  fluidRow(
    
    column(3,
           radioButtons("radio", label = h3("Radio buttons"),
                        choices = list("Choice 1" = 1, "Choice 2" = 2,
                                       "Choice 3" = 3),selected = 1)),
    
    column(3,
           selectInput("select", label = h3("Select box"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2,
                                      "Choice 3" = 3), selected = 1)),
    
    column(3, 
           sliderInput("slider1", label = h3("Sliders"),
                       min = 0, max = 100, value = 50),
           sliderInput("slider2", "",
                       min = 0, max = 100, value = c(25, 75))
    ),
    
    column(3, 
           textInput("text", label = h3("Text input"), 
                     value = "Enter text..."))   
  )
  
    ))