# ui.R
library(shiny)



  

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  
  # Application title
  titlePanel("BMI Calculator"),
  
    
    # Sidebar panel
    sidebarPanel(
	  img(src="http://livewellcolorado.org/assets/frontend/images/bmi-calculator_where-do-you-stand.jpg", height=100, width=200),
      numericInput('weight', 'Weight in lbs', 0, min = 0, max = 300, step = 1),
	  numericInput('height', 'Height in feet', 0, min = 0, max = 15, step = 0.1),
	  numericInput('age', 'Age', 0, min = 0, max = 120, step = 1),
	  radioButtons("sex", "Sex:",
             c("Male" = "male",
               "Female" = "female")),
		submitButton('Submit')
		

    ),
    
    # Main panel
    mainPanel(
		h3('BMI results'),
		h4('You entered',style = "color:blue"),
		verbatimTextOutput("oh1"),
		verbatimTextOutput("ow1"),
		verbatimTextOutput("oa1"),
		verbatimTextOutput("os1"),		
		h4('Your BMI is ',style = "color:red"),
		verbatimTextOutput("prediction"),
		img(src="http://trialx.com/curetalk/wp-content/blogs.dir/7/files/2011/09/BMI.jpg",align = "left", height = 300, width = 400),
		h6('                                                                 '),
        h6('image courtesy : livewellcolorado.com and trialx.com',style = "color:grey")
    )
  )
)