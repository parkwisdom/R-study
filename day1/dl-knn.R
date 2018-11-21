subject_name<-c('Jone','Jone','Steve')
#c:���� ���� �Լ�= py-array
subject_name #print
temperature<-c(98.1,98.6,101.4)
temperature[2] #�ε��� 1���� ����
flu_status<-c(FALSE,FALSE,TRUE)
flu_status[2:3]
flu_status[-2]
flu_status[-3] #3��° ��ġ�� ������ ������

temperature[c(FALSE,FALSE,TRUE)]# true���� ���

#������
gender<-factor(c('MALE','FEMALE','MALE')) #fector > ����������� �Լ�
gender
blood<-factor(c('O','AB','A'),levels = c('A','B','O','AB'))
blood

#�����ִ� ������
symptoms<-factor(c('SEVERE','MILD','MODERATE'),levels=c('MILD','MODERATE','SEVERE'),ordered = TRUE)
symptoms

#����Ʈ:���������� «��
gender[1]
subject1<-list(fullname=subject_name[1],
               temperature=temperature[1],
               flu_status=flu_status[1],
               gender=gender[1],
               blood=blood[1],
               symptoms=symptoms[1])
subject1
subject1[2]
subject1[[2]]
subject1$temperature
subject1[c('temperature')]

pt_data<-data.frame(subject_name,temperature,flu_status,gender,blood,symptoms,stringsAsFactors = FALSE)
#stringsAsFactors=false ������ ����
pt_data
str(pt_data) #structure: ������ ����� ������ ����
pt_data[,1] #1��
pt_data[1,] #1��
pt_data[,] #��
pt_data[c(1,3)] #1���� 3�� / :�� �������� ��
pt_data[c(1,3),c("temperature","gender")]
pt_data[-2,c(-1,-3,-5)] #2��, 1,3,5���� ���� 

#���
m<-matrix(c(1,2,3,4),nrow = 2)
m<-matrix(c(1,2,3,4),ncol = 2)
m<-matrix(c(1,2,3,4,5,6),ncol = 2)
m
m[1,1]
m[3,2]
m[1,]
m[,1]

ls() #�޸𸮿� �ִ� ���� ��� Ȯ
rm(m,subject1)
ls()
rm(list=ls())
ls()

usedcars<-read.csv('d:/Rworkspace/usedcars.csv',stringsAsFactors = FALSE)
str(usedcars)

#������
summary(usedcars$year)
summary(usedcars[c("price","mileage")])

(36000+44000+56000)/3
mean(c(36000,44000,56000))
median(c(36000,44000,56000)) #������
range(usedcars$price) #�ּҰ� �ִ밪 ����
diff(range(usedcars$price)) #�ִ�-�ּ�
IQR(usedcars$price)
#�������� ����� �ϴ� ��� probs�ɼ� ����
quantile(usedcars$price,probs = c(0.01,0.99))
boxplot(usedcars$price,main="Boxplot of UCP",ylab="price($)")
boxplot(usedcars$mileage,main="Boxplot of UCM",ylab="Odometer(mi.)")

#historygram
hist(usedcars$price,main = "Hist of UCP",xlab = 'price',ylab = 'Frequency')

var(usedcars$price) #�л�
sd(usedcars$price) #ǥ������

table(usedcars$year)
table(usedcars$model)
table(usedcars$color)

model_table<-table(usedcars$model)
prop.table(model_table) #ǥ ����

color_table<-table(usedcars$color)
color_pct<-prop.table(color_table)*100
round(color_pct,digits = 1)

plot(x=usedcars$mileage,y=usedcars$price,
     main="scatterplot",xlab = 'uso',ylab = 'usp')

str(usedcars)
usedcars$conservative<-usedcars$color %in% c("Black","Gray","Silver","White")
usedcars$conservative