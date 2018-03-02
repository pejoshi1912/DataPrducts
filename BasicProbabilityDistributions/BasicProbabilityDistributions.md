Basic Probability Distributions
========================================================
author: Peeyush 
date: 2/3/2018
autosize: true

Basic Probability Distributions
========================================================

Introduction 
------------

This web app provides an easy and interactive way to experiment 
with 4 basic probability distributions

- Normal Distribution
- Poisson Distribution
- Uniform Distribution
- Binomial Distribution

User Friendly Interface
========================================================


- Easy to use 
- only side bar panel and main panel 
- Select any distributions on side bar panel
- Main panel show the selected distribution with default values
- Manipulate the parameters using sliders 
- The plot is changed according the parameters

Usefulness
========================================================

- Specially useful for biginners
- To understand basic shape of a probability distribution
- To be familier with different parameters of a distribution
- To see affect of different combinations of parameters on the shape of distribution
- Following Normal Distribution plot will appear for mean=1, and sd=2 
...

```r
nStd=2; nMean=1
x<- seq(-10, 10, by=0.01)
hx <- dnorm(x,mean = nMean, sd= nStd)
plot(x, hx, type='l', lty=1, lwd=2,
      col="red", xlab = "x value",ylab = "Density", main="Normal Distribution" )
```

![plot of chunk unnamed-chunk-1](BasicProbabilityDistributions-figure/unnamed-chunk-1-1.png)
Future Scope
=========================================================


- Many advance probability distributions can be added 
- Will be useful for everyuser from naive to expert


Links 

Link to the Web-app
-------------------

 https://pejoshi1912.shinyapps.io/BasicProbabilityDistributions/


 
link to code 
------------

[server.R](https://github.com/pejoshi1912/DataProducts/blob/master/BasicProbabilityDistributions/server.R)

[ui.R](https://github.com/pejoshi1912/DataProducts/blob/master/BasicProbabilityDistributions/ui.R)

   Thank you

   -------
       
            
