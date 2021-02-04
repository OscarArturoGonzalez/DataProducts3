#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Load Data

prpeople <- read.csv("./puertoricansinusa.csv")

# Define a server for the Shiny app 
 function(input, output) { 
    
   # Fill in the spot we created for a plot 
   output$people <- renderPlot({ 
      
     # Render a barplot 
     barplot(prpeople[,input$Region],  
             main=input$Region, 
             ylab="Number of Puerto Rican in USA", 
             xlab="Year") 
   })
 }

# Para deploy en Shiny Apps:
# install.packages('rsconnect')
# rsconnect::setAccountInfo(name='oscararturo', token='3A39AD039DCF1F6BA170AE084554FBF1', secret='LO3vN4TFTWp13VFcsaV1sf/ZaTo69TukZHAnGr5L')
# install.packages("devtools") ---Opcional
# deployApp(appName = "myFirstApp")