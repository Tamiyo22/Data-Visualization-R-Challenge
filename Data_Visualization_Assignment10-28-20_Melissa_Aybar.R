
#Student: Melissa Aybar

install.packages("ggplot2")
library(ggplot2)

install.packages("plotly")
library(plotly)


data = read.csv("C:\\Users\\watch\\Desktop\\R Programming for Data Science Training\\Customer_Churn-1.csv")
View(data)

#Problem Statement:
  
  #Sam has successfully completed the data manipulation phase. Now, he has to represent the data pictorially to get a better understanding.
#Sam will start off by making some bar plots by using the geom_bar() function from the ggplot2 package 
#Questions on geom_bar():
  
 # 1.	Build a bar-plot for the 'PhoneService' column

ggplot(data,aes(x=PhoneService))

#a.	Assign the fill color to be 'pink'
ggplot(data,aes(x=PhoneService)) + geom_bar()

#b.	Assign the boundary color to be 'peru'

ggplot(data,aes(x=PhoneService)) + geom_bar(fill="pink",col="peru")

#2.	Build a bar-plot for the 'InternetService' column

ggplot(data,aes(x=InternetService))

#a.	Assign 'InternetService' to the fill aesthetic

ggplot(data,aes(x=InternetService, fill=InternetService))

#b.	Assign 'Contract' to the fill aesthetic

ggplot(data,aes(x=InternetService,fill=Contract)) + geom_bar()

#c.	Change the position of bars to 'identity'

ggplot(data,aes(x=InternetService,fill=Contract)) + geom_bar(position = "identity")

#3.	Build a bar-plot for 'TechSupport' column

ggplot(data,aes(x=TechSupport)) + geom_bar()

#a.	Assign 'Churn' to the fill aesthetic
ggplot(data,aes(x=InternetService,fill=Churn)) + geom_bar()


#Now, Sam will go ahead & make some histograms by using the geom_histogram() function
#Questions on geom_histogram():
  
#1.	Build a histogram for the 'tenure' column

ggplot(data,aes(x=tenure)) + geom_histogram()

#a.	Assign the fill color to be 'mediumspringgreen'

ggplot(data,aes(x=tenure)) + geom_histogram(fill="mediumspringgreen")

#b.	Assign the boundary color to be 'azure'

ggplot(data,aes(x=tenure)) + geom_histogram(fill="mediumspringgreen",col="azure")

#c.	Change the number of bins to be 100

ggplot(data,aes(x=tenure)) + geom_histogram(fill="mediumspringgreen",col="azure",bins=100)

#2.	Build histogram for the 'MonthlyCharges' column

ggplot(data,aes(x=MonthlyCharges)) + geom_histogram()

#a.	Assign 'PaymentMethod' to the fill aesthetic

ggplot(data,aes(x=MonthlyCharges,fill=PaymentMethod)) + geom_histogram(position = "Dodge")

#b.	Assign 'OnlineBackup' to the fill aesthetic

ggplot(data,aes(x=MonthlyCharges,fill=OnlineBackup)) + geom_histogram()

#3.	Build histogram for the 'TotalCharges' column
ggplot(data,aes(x=TotalCharges)) + geom_histogram()

#a.	Assign 'gender' to the fill aesthetic

ggplot(data,aes(x=MonthlyCharges,fill=gender)) + geom_histogram()

#b.	Assign 'InternetService' to the fill aesthetic

ggplot(data,aes(x=MonthlyCharges,fill=InternetService)) + geom_histogram()


#Now, Sam decides to make some scatter-plots on the data by using geom_point() function
#Questions on geom_point():
  
# 1.	Build a scatter-plot between 'TotalCharges' & 'tenure'. Map 'TotalCharges' to the y-axis 
#& 'tenure' to the 'x-axis'

ggplot(data,aes(y=TotalCharges, x= tenure))

#a.	Assign it the color 'wheat3'

ggplot(data,aes(y=TotalCharges, x= tenure))+ geom_point(col="wheat3")

#b.	Use 'col' as an aesthetic and Map 'PaymentMethod' to col

ggplot(data,aes(y=TotalCharges, x= tenure, col=PaymentMethod))+ geom_point()

#c.	Use 'col' as an aesthetic and Map 'gender' to col

ggplot(data,aes(y=TotalCharges, x= tenure, col=gender))+ geom_point()

#d.	Map 'Dependents' to both 'col' & 'shape' aesthetics

ggplot(data,aes(y=TotalCharges, x= tenure, col=Dependents,shape = Dependents))+ geom_point()

#2.	Build a scatter-plot between 'tenure' & 'MonthlyCharges'. Map 'tenure' to the y-axis & 'MonthlyCharges' to the 'x-axis'

ggplot(data,aes(y=tenure, x=MonthlyCharges))+ geom_point()

#a.	Assign it the color 'yellowgreen'

ggplot(data,aes(y=tenure, x=MonthlyCharges))+ geom_point(col="yellowgreen")

#b.	Use 'col' as an aesthetic and Map 'InternetService' to col

ggplot(data,aes(y=tenure, x=MonthlyCharges, col= InternetService, shape = InternetService))+ geom_point()

#c.	Use 'col' as an aesthetic and Map 'Contract' to col

ggplot(data,aes(y=tenure, x=MonthlyCharges, col= Contract, shape = Contract))+ geom_point()

#test with plotly
plot_ly(data=customer_churn, x = ~MonthlyCharges, y = ~tenure, color = ~Dependents, type='scatter')

#Now, Sam has to make some box-plots using the geom_boxplot() function

#Questions on geom_boxplot:
  
# 1.	Build a box-plot between 'tenure' & 'Partner'. Map 'tenure' to the y-axis & 'Partner' to the 'x-axis'

ggplot(data,aes(y=tenure,x=Partner))+geom_boxplot()

#a.	Assign it a fill color of 'violet'

ggplot(data,aes(y=tenure,x=Partner))+geom_boxplot(fill ="violet")

#b.	Assign it a boundary color of 'snow3'

ggplot(data,aes(y=tenure,x=Partner))+geom_boxplot(fill ="violet",col="snow3")

#2.	Build a box-plot between 'tenure' & 'MultipleLines'. Map 'tenure' to the y-axis & 'MultipleLines' to the 'x-axis'

ggplot(data,aes(y= tenure,x=MultipleLines))+geom_boxplot()

#a.	Assign 'Partner' to the fill aesthetic

ggplot(data,aes(y=tenure,x=MultipleLines,fill=Partner))+geom_boxplot()

#b.	Assign 'PhoneService' to the fill aesthetic

ggplot(data,aes(y=tenure,x=MultipleLines,fill=PhoneService))+geom_boxplot()

#3.	Build a box-plot between 'tenure' & 'Contract'

ggplot(data,aes(y=tenure,x=Contract))+geom_boxplot()

#a.	Assign 'InternetService' to the fill aesthetic

ggplot(data,aes(y=tenure,x=Contract, fill=InternetService))+geom_boxplot()

#b.	Assign 'PaymentMethod' to the fill aesthetic

ggplot(data,aes(y=tenure,x=Contract, fill=PaymentMethod))+geom_boxplot()



#Now, Sam will go ahead and facet the data
#Questions on facet_grid():
  
# 1.	Build a box-plot between 'tenure' & 'MultipleLines'. Map 'tenure' on the y-axis & 'MultipleLines' on the x-axis.
#Map 'InternetService' to the fill aesthetic

ggplot(data,aes(y=tenure,x=MultipleLines, fill=InternetService))+geom_boxplot()+facet_grid(~InternetService)

#a.	Facet the plot w.r.t 'InternetService' column

ggplot(data,aes(y=tenure,x=MultipleLines, fill=InternetService))+geom_boxplot()+facet_grid(~InternetService)

#2.	Build a scatter-plot between 'TotalCharges' & 'tenure'. Map 'TotalCharges' on the y-axis &
#'tenure' on the x-axis. Map 'Contract' onto col aesthetic

ggplot(data,aes(y=TotalCharges,x=tenure,col=Contract))+geom_point()


#a.	Facet the plot w.r.t 'Contract' column

ggplot(data,aes(y=TotalCharges,x=tenure,col=Contract))+geom_point()+facet_grid(~Contract)

#3.	Build a histogram for the 'MonthlyCharges' column. Map 'PaymentMethod' onto fill aesthetic.

ggplot(data,aes(x=MonthlyCharges,fill=PaymentMethod))+geom_histogram()


#a.	Facet the plot w.r.t 'PaymentMethod' column


#Finally, Sam will add some themes to the plot with the theme() layer
#Questions on theme() layer:
  
# 1.	Build a bar-plot for the 'gender' column. Give it a fill color of 'blue4'
ggplot(data,aes(x=gender))+geom_bar(fill="blue4")

#a.	Give the panel a background color of 'chartreuse4'
ggplot(data,aes(x=gender))+geom_bar(fill="blue4")+theme(panel.background = element_rect(fill="chartreuse4"))

#b.	Give the plot a background color of 'cornsilk4'

ggplot(data,aes(x=gender))+geom_bar(fill="blue4")+theme(panel.background = element_rect(fill="cornsilk4"))

#2.	Build a scatter-plot between 'tenure' & 'MonthlyCharges'. Map 'tenure' on the y-axis &
#'MonthlyCharges' on the x-axis. Assign a color of 'yellowgreen' to the points.

ggplot(data,aes(y=tenure,x=MonthlyCharges))+geom_point(col="yellowgreen")

#a.	Add a title to the plot 'Tenure vs Monthly Charges'
ggplot(data,aes(y=tenure,x=MonthlyCharges))+geom_point(col="yellowgreen")+ labs(title="Tenure vs Monthly Charges")

#b.	Give the panel a background color of 'coral2'

ggplot(data,aes(y=tenure,x=MonthlyCharges))+geom_point(col="yellowgreen")+ labs(title="Tenure vs Monthly Charges") + theme(panel.background = element_rect(fill="coral2"))

#c.	Give the plot a background color of 'beige'

ggplot(data,aes(y=tenure,x=MonthlyCharges))+geom_point(col="yellowgreen")+ labs(title="Tenure vs Monthly Charges") + theme(panel.background = element_rect(fill="beige")) 


#d.	Center align the title & make the color of the title to be red

ggplot(data,aes(y=tenure,x=MonthlyCharges))+geom_point(col="yellowgreen")+ labs(title="Tenure vs Monthly Charges") + theme(panel.background = element_rect(fill="beige"))+theme(plot.title=element_text(hjust = 0.10,colour = "red")) 

