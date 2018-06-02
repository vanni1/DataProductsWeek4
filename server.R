library(shiny)

library(forecast)

# Define server logic required to draw a plot
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({

    # generate datasubset based on user input input$Country from ui.R
    SelectedCountry = if(input$Country=="") {"World"} else {input$Country}
    
    MyPop <- Pop[Pop$Country.Name == SelectedCountry,]
    
    # generate associated timeseries
    myts <- ts(MyPop$population, start=1960, end=2016, frequency=1)

    # fit a time-series model 
    fit <- HoltWinters(myts,  gamma=FALSE)
    plot (forecast(fit,10),ylim=c(0,max(myts)*1.3),
          main=paste(SelectedCountry," population since 1960 and projected 2016-2026"))
    
  })
  
  url <- a("Google Homepage", href="https://www.google.com/")
  
  output$tab <- renderUI({
    tagList("URL link:", url)
  })
  
})



