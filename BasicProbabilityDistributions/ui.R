
library(shiny)


shinyUI(fluidPage(
  
  titlePanel("Basic Probability Distributions"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("distribution", "Distribution",
                  c(Normal="normal",
                    Poisson="poisson",
                    Uniform="uniform",
                    Binomial="binomial"
                    )),
      
      conditionalPanel(condition="input.distribution=='normal'",
              sliderInput("nMean", "Mean (mu)",
                          min=-10, max=10, 
                          value= 0,step= 0.001
                          ),
              sliderInput("nStd","Standard Deviation (sigma)",
                          min=0, max=100,
                          value = 1,step = 0.001)),
      
      conditionalPanel(condition="input.distribution=='uniform'",
                       sliderInput("uMin", "Min",
                                   min=-50, max=50, 
                                   value= -1,step= 0.001
                       ),
                       sliderInput("uMax", "Max",
                                   min=-49, max=51, 
                                   value= 1,step= 0.001
                       )),
                       
      conditionalPanel(condition="input.distribution=='binomial'",
                       sliderInput("bSize", "Size (n)",
                                   min=1, max=100, 
                                   value= 1,step=1
                       ),
                       sliderInput("bProb","Probability (p)",
                                   min=0, max=1,
                                   value = 0.5,step = 0.001)),
      
      conditionalPanel(condition="input.distribution=='poisson'",
                       sliderInput("pLambda", "Average (lambda)",
                                   min=0, max=100, 
                                   value= 1,step= 0.001
                       ))
    ),
    
  
    
  # Show a plot of the generated distribution
  mainPanel(
       plotOutput("plot1")
  )
 )
))
