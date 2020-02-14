library(shiny)

shinyUI(fluidPage(
  titlePanel("Automatic vs Manual Cars MPG performance"),
  sidebarLayout(
    sidebarPanel(
      h3("Dimension"),
      radioButtons("variable", "Variable:",
                   c("Weight" = "wt",
                     "HP" = "hp",
                     "Displacement" = "disp",
                     "Gears" = "gear"))
    ),
    mainPanel(
      h3("Comparison"),
      plotOutput("plot1")
    )
  )
))