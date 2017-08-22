# ui.R

library(shinydashboard)
library(shiny)
library(googleVis)

body <- dashboardBody(
  tabItem(tabName = "bubble",
          htmlOutput("Bubble_Plot"))
)

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem(text = "bubble", icon = icon("bubble"))
  )
)

dashboardPage(
  dashboardHeader(title = "Bubble chart"),
  sidebar,
  body
)
# fluidPage(
#   titlePanel("Bubble Chart"),
#   mainPanel(
#     htmlOutput("Bubble_Plot")
#   )
# )