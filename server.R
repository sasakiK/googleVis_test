# server.R

library(shinydashboard)
library(shiny)
library(googleVis)

function(input, output) {
  df_for_bubble <- read.csv(textConnection("
                              NAME,YEAR,VALUE,VALUE2,SIZE
                                           A,2015,90,90,90
                                           A,2016,80,95,80
                                           A,2017,95,70,80
                                           B,2015,80,50,50
                                           B,2016,87,54,54
                                           B,2017,75,50,50
                                           C,2015,89,15,40
                                           C,2016,82,16,30
                                           C,2017,90,50,54 "))
  
  output$Bubble_Plot <- renderGvis({
    
    Bubble <- gvisBubbleChart(df_for_bubble, 
                              idvar="NAME", 
                              xvar="VALUE",
                              yvar="VALUE2",
                              colorvar="YEAR", 
                              sizevar="SIZE",
                              options=list(
                                hAxis='{minValue:60, maxValue:100}',
                                vAxis='{minValue:0,maxValue:120}')
    )
    return(Bubble)
  })
}