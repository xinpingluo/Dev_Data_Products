library(shiny)
input_flag <- 0
shinyServer(
  function(input, output) {
#   
   number_of_spaces <- reactive( nchar(input$texti1) - nchar(gsub(" ","",input$texti1)))
   number_of_questionmarks <- reactive( nchar(input$texti1) - nchar(gsub("\\?","",input$texti1)))
   
# 
  observe({
    input$texti1
    isolate({random_factor <<- runif(1)/3 })
    })
   
  output$texto1 <- renderText( {
    input$texti1
  })
#   
  output$texto2 <- renderText({     
          if(random_factor * number_of_spaces() * number_of_questionmarks() > 0.5) "YES!"
          else "No :-("
  })
     
  output$texto3 <- renderText({
    paste(random_factor," * ", number_of_spaces(), "*", number_of_questionmarks(), " = ", random_factor * number_of_spaces()* number_of_questionmarks())
      })
   
  }
)