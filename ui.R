library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Answer to questions you always wanted to ask!"),
  sidebarPanel(
    textInput('texti1', 'Enter your Yes/No question here:', 'Is the sky blue?')
    ##,actionButton("goButton","Give me the magic answer!")
    
    #,dateInput("date", "Date:")
  ),
  mainPanel(
    tabsetPanel( 
      tabPanel("Result", p(), p(strong('Your question is:')),textOutput("texto1"), p()
      ,p(strong('Magic app says:')),textOutput("texto2")
      ,p()
      ,p(strong('Secret Formula: Magic Factor * Number of words * Questionmark Factor = Truth KPI:'))
      ,p(textOutput("texto3"))
      )
      ,tabPanel("Documentation", p(), p('1. Enter your question'), p('2. The magic app delivers an answer'), p('The answer is calculated based on a randomized variable, the number of spaces and questionmarks of the question.'), p('The higher the number of spaces and questionmarks the higher the Truth KPI and the more likely the answer is going to be "Yes". '))
    )                                
  )
))