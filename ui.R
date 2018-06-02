
library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Population since 1960"),
  
  sidebarLayout(
    sidebarPanel(
       selectInput('Country','Select a Country or a Region',Pop$Country.Name),
       hr(),
       helpText("Worldbank data on countries and regions population (1960-2016) is presented here, with an aditional 10 year time series forecast (using the R forecasting package for timeseries)"),
       hr(),
       uiOutput("tab")
    ),
    
    mainPanel(
       plotOutput("distPlot")
    )
  )
))