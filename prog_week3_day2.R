managers_data<-read.csv("C:/Users/bhask/Downloads/managers.csv")
managers_data
str(managers_data)
con_da= as.Date(managers_data$Date, format=c("%Y-%d-%m", "%m/%d/%Y","%Y-%d-%m"))
con_da
managers_data$Date=con_da
str(managers_data)
str(con_da)
s_d="2018-10-15" 
e_d="2018-11-01"
a=managers_data[managers_data$Date>=s_d & managers_data$Date<=e_d,]
a
b=managers_data[c("Q3","Q4")]
b
include_list=names(managers_data) %in% c("Q3","Q4")
include_list
d=subset(managers_data, select = c(-Q3,-Q4))
d
managers_data
e=managers_data[managers_data$Age>35 | managers_data$Age<24,c("Q1","Q2","Q3","Q4")]
e
attach(managers_data)
f=managers_data[managers_data$Gender=='M' & managers_data$Age>25,c(4:9)]
f
m_d1=managers_data[sample(2:nrow(managers_data),3,replace=FALSE),]
m_d1
m_d2=managers_data[sample(2:nrow(managers_data),10,replace=TRUE),]
m_d2
managers_data
n_d=managers_data[order(Gender,Age),]
n_d
