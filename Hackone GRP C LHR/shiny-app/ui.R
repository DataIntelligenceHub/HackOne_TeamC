library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Zeus"),
  
  sidebarPanel(     
    
    selectInput("type", "Choose your settlement: ",
                choices = c("Rural", "Urban")),
    
    numericInput("rooms", "Enter number of rooms: ", 0),
    
    numericInput('kw_num', "Enter number of heavy appliances: ", 0),
    
    actionButton("submit", "Predict My Bill!", class = "btn-primary")
    
    ),
  
  mainPanel(
    tags$head(tags$script(src='jquery.min.js')),
    tags$head(tags$script(src='index.js'))
  )
))
