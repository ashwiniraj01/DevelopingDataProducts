# server.R

# load shiny package
library(shiny)


feettoinches <- function(height) (height * 12)
bmicalculator <- function(weight,height) ((weight * 703) / ( height * height))

# server code
shinyServer(
  function(input, output) {
    output$oh1 <- renderPrint({input$weight})
	output$ow1 <- renderPrint({input$height})
	output$oa1 <- renderPrint({input$age})
	output$os1 <- renderPrint({input$sex})
	
	
 output$prediction <- renderPrint({bmicalculator(input$weight, feettoinches(input$height))})
    })