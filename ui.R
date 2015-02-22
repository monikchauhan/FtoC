library(shiny)
shinyUI(pageWithSidebar(
  # Application title
  headerPanel("Farenheit to Celsius Prediction"),
  
  sidebarPanel(
  numericInput('faren', 'Farenheit Degrees F',32,min=0,max=500,step=5),
  submitButton('Submit')
    ),
  
mainPanel(
  h3('Equivalent Degree Celsius'),
  h4('You entered'),
  verbatimTextOutput("inputValue"),
  h4('which predicts'),
  verbatimTextOutput("prediction")
  )
  
  
 ))