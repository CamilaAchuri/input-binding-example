#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
source('buttons-group.R')

ui <- fluidPage(
  uiOutput('options'),
	verbatimTextOutput('result')
)

server <- function(input, output) {
  output$options <- renderUI(buttonGroup(
		id = 'radios',
		labels = c('area', 'bar', 'donut'),
		value = c('one', 'two', 'three')
	))
	output$result <- renderPrint(input$radios)
}

# Run the application 
shinyApp(ui = ui, server = server)

