library(dplyr)
library(ggplot2)
library(shiny)

shinyServer(function(input, output) {
    output$plot1 <- renderPlot({
        variable <- input$variable
        data <- data.frame(y = mtcars$mpg,
                           transmission = factor(mtcars$am, levels = c(0, 1), labels = c("at", "ma")),
                           x = mtcars[, variable])
        g <- ggplot(data, aes(x=x, y=y, color = transmission)) +
             geom_point(size=2) +
             labs(x = "variable", y = "MPG") +
             geom_smooth(method = "lm")
        g
    })
})