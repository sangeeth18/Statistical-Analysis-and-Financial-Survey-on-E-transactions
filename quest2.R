Sys.setenv(HADOOP_PREFIX="/usr/local/hadoop")
Sys.setenv(HADOOP_CMD="/usr/local/hadoop/bin/hadoop")
Sys.setenv(HADOOP_STREAMING="/usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar")
library(rhdfs)
library(rmr2)

hdfs.init()
hdfs.ls('/')
#ECS

A=hdfs.read.text.file('/usr/local/hadoop/sw20/projectyear/ECS1415/000000_0')
write.csv(A, "ecs1415.csv", row.names=FALSE)
ecs1=read.csv("/home/sw15/ecs1415.csv",header=FALSE)

B=hdfs.read.text.file('/usr/local/hadoop/sw20/projectyear/ECS1516/000000_0')
write.csv(B, "ecs1516.csv", row.names=FALSE)
ecs2=read.csv("/home/sw15/ecs1516.csv",header=FALSE)

X1=ecs1$V1
Y1=ecs1$V2
X2=ecs2$V1
Y2=ecs2$V2

P= rbind(Y1,Y2)
P=P/1000000
Q <-c("Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec","Jan","Feb","Mar")
AA =barplot(P,names.arg =Q,las=2,ylim =c(0,25))
text(x = AA, y = P, label = P, pos = 3, cex = 0.8, col = "red")






#MOBILE

C=hdfs.read.text.file('/usr/local/hadoop/sw20/projectyear/Mobileyr1415/000000_0')
write.csv(C, "mobile1415.csv", row.names=FALSE)
mob1=read.csv("/home/sw15/mobile1415.csv",header=FALSE)

D=hdfs.read.text.file('/usr/local/hadoop/sw20/projectyear/Mobileyr1516/000000_0')
write.csv(D, "mobile1516.csv", row.names=FALSE)
mob2=read.csv("/home/sw15/mobile1516.csv",header=FALSE)

X3=mob1$V1
Y3=mob1$V2

X4=mob2$V1
Y4=mob2$V2



#NEFT

E=hdfs.read.text.file('/usr/local/hadoop/sw20/projectyear/NEFTyr1415/000000_0')
write.csv(E, "neft1415.csv", row.names=FALSE)
neft1=read.csv("/home/sw15/neft1415.csv",header=FALSE)

 
neft2=read.csv("/home/sw15/neft1516.csv",header=FALSE)

X5=neft1$V1
Y5=neft1$V2

X6=neft2$V1
Y6=neft2$V2


#RTGS

H=hdfs.read.text.file('/usr/local/hadoop/sw20/projectyear/RTGSyr1415/000000_0')
write.csv(H, "rtgs1415.csv", row.names=FALSE)
rtgs1=read.csv("/home/sw15/rtgs1415.csv",header=FALSE)

I=hdfs.read.text.file('/usr/local/hadoop/sw20/projectyear/RTGSyr1516/000000_0')
write.csv(I, "rtgs1516.csv", row.names=FALSE)
rtgs2=read.csv("/home/sw15/rtgs1516.csv",header=FALSE)

X7=rtgs1$V1
Y7=rtgs1$V2

X8=rtgs2$V1
Y8=rtgs2$V2





