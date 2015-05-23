library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Answer to questions you always wanted to ask!"),
  sidebarPanel(
    textInput('texti1', 'Enter your Yes/No question here:', 'Is the sky blue?')
    ##,actionButton("goButton","Give me the magic answer!")
    
    #,dateInput("date", "Date:")
  ),
  mainPanel(
    p(strong('Your question is:')),textOutput("texto1"), p()
    ,p(strong('Magic app says:')),textOutput("texto2")
    ,p()
    ,p(strong('Secret Formula: Magic Factor * Number of words * Questionmark Factor = Truth KPI:'))
    ,p(textOutput("texto3"))
                                    
  )
))