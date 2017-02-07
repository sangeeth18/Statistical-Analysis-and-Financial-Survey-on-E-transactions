Sys.setenv(HADOOP_PREFIX="/usr/local/hadoop")
Sys.setenv(HADOOP_CMD="/usr/local/hadoop/bin/hadoop")
Sys.setenv(HADOOP_STREAMING="/usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar")
library(rhdfs)
library(rmr2)

hdfs.init()
hdfs.ls('/')
library(plotrix)
#NEFT
A=hdfs.read.text.file('/usr/local/hadoop/group1test/question3/neft/000000_0')
write.csv(A, "neft.csv", row.names=FALSE)
NEFT=read.csv("/home/sw15/neft.csv",header=FALSE)


X=NEFT$V1
Y=NEFT$V2
piepercent<- round(100*Y/sum(Y), 1)
piepercent<-paste(piepercent,"%",sep="")
pie3D(Y,labels=piepercent,explode=0.1,height = 0.3,radius = 2,
      main="NEFT Bank-wise Analysis",labelcol = "dark red",shade = 0.5)

legend("top",X,bg = "lightblue",cex=0.5,fill = rainbow(length(Y)),legend =X)

#RTGS
B=hdfs.read.text.file('/usr/local/hadoop/group1test/question3/rtgs/000000_0')
write.csv(B, "rtgs.csv", row.names=FALSE)
RTGS=read.csv("/home/sw15/rtgs.csv",header=FALSE)


X=RTGS$V1
Y=RTGS$V2
piepercent<- round(100*Y/sum(Y), 1)
piepercent<-paste(piepercent,"%",sep="")
pie3D(Y,labels=piepercent,explode=0.1,height = 0.3,radius = 2,
      main="RTGS Bank-wise Analysis ",labelcol = "dark red",shade = 0.5)

legend("top",X,bg = "lightblue",cex=0.5,fill = rainbow(length(Y)),legend =X)

#Mobile
C=hdfs.read.text.file('/usr/local/hadoop/group1test/question3/mobile/000000_0')
write.csv(C, "mobile.csv", row.names=FALSE)
Mob=read.csv("/home/sw15/mobile.csv",header=FALSE)


X=Mob$V1
Y=Mob$V2
piepercent<- round(100*Y/sum(Y), 1)
piepercent<-paste(piepercent,"%",sep="")
pie3D(Y,labels=piepercent,explode=0.1,height = 0.3,radius = 2,
      main="IMPS Bank-wise Analysis ",labelcol = "dark red",shade = 0.5)

legend("top",X,bg = "lightblue",cex=0.5,fill = rainbow(length(Y)),legend =X)









dev.off()


