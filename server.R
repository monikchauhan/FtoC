library(shiny)
f2c<-function(faren) (faren-32)*5/9

shinyServer(
  function(input,output){
    output$inputValue<- renderPrint({input$faren})
    output$prediction<- renderPrint({f2c(input$faren)})
    
    
  }
  )