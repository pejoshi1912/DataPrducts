
library(shiny)


shinyServer(function(input, output) {
   
  output$plot1 <- renderPlot({
    set.seed(151283)
    
    distributionSelected <- input$distribution
    
    nMean<- input$nMean
    nStd <-input$nStd
    pLambda <- input$pLambda
    
    
    
    uMin <- input$uMin
     
    validate(
      need(input$uMax > uMin, "Max value must be GREATER than Min")
    )
    uMax <-input$uMax
    bSize <- input$bSize
    bProb <- input$bProb
    
    
    if(distributionSelected=="normal"){
      x <- seq(-20,20,by=0.5)
      hx <- dnorm(x,mean = nMean, sd = nStd) 
      main="Normal Distributions"  
    }
    else if(distributionSelected=="poisson"){
      x <- seq(0,100,by=0.5)
      hx <- dpois(x,lambda = pLambda) 
      main="Poisson Distribution"
    }
    else if(distributionSelected=="binomial"){
      x <- seq(0,100,by=1)
      hx <- dbinom(x,size = bSize,prob = bProb) 
      main="Binomial Distribution"
    }
    
    else if(distributionSelected=="uniform"){
      x <- seq(-20,20,by=0.5)
      
      hx <- dunif(x,min = uMin,max = uMax)
      main="Uniform Distribution"
      
      
    }
    
   
    plot(x, hx, type="l", lty=1,lwd=2, col="red", xlab="x value",
                ylab="Density", main=main)  
    
    
  })
  
})
