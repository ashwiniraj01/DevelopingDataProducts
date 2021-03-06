BMI Calculator App
========================================================
author: Ashwini Raj
date: 08/23/2014
![alt text](http://cdn.marketplaceimages.windowsphone.com/v8/images/5e22a103-da84-46af-ac69-6e24671f9d07?imageType=ws_icon_large)
Developing Data Products
------------------------
RStudio presentation for Coursera


What does the app do?
========================================================

The BMI app that I created calculates the body mass index
of the person based on the data entered. The data you need 
to enter is :

- Weight in lbs
- Height in feet


How does it calculate BMI?
========================================================
The formula for BMI is as below         
BMI = ( Weight in Pounds / ( Height in inches x Height in inches ) ) x 703            
Suppose you enter     
- weight = 128 lbs      
- height = 5 feet 6 inches      
it calculates it as follows

```r
height <- 128
weight <- (5*12)+6
bmi <- (height/(weight*weight))*703
bmi
```

```
[1] 20.66
```


What after calculating BMI?
========================================================

After I calculate and display the BMI value.I have provided
an image(as below) which specifies what the value means. i.e.
if the person is underweight, ideal or obese etc.

![alt text](http://trialx.com/curetalk/wp-content/blogs.dir/7/files/2011/09/BMI.jpg)

Conclusion
========================================================
- This app helps the person to know where he stands and how he has ro adjust his weight
to get to the ideal weight.
- By being within the ideal BMI range people can avoid health problems.

Improvements
------------
The app could take the age and sex data of the person and predict more accurately their BMI.
