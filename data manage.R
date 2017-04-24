require(foreign)
require(plyr)


data <- read.spss("1. Completa 2013-2016_depurada_caso_x_fila.sav", to.data.frame=T)
x<-grep("EVI", names(data))#remove all EVIdences
data<-data[,-x]
x<-grep("Evi", names(data))
data<-data[,-x]


spss2date <- function(x) as.Date(x/86400, origin = "1582-10-14")
data$data_ava_F1<-ldply(data$data_ava_F1, spss2date)
data$data_ava_F2<-ldply(data$data_ava_F2, spss2date)
data$data_ava_F3<-ldply(data$data_ava_F3, spss2date)
data$data_ava_F4<-ldply(data$data_ava_F4, spss2date)
data$data_ava_F5<-ldply(data$data_ava_F5, spss2date)
data$data_ava_F6<-ldply(data$data_ava_F6, spss2date)
data$data_ava_F7<-ldply(data$data_ava_F7, spss2date)
data$data_ava_F8<-ldply(data$data_ava_F8, spss2date)
data$data_ava_F9<-ldply(data$data_ava_F9, spss2date)

data$naixe_cod<-ldply(data$naixe_cod, spss2date)

data$edad_F1<-data$data_ava_F1-data$naixe_cod
data$edad_F2<-data$data_ava_F2-data$naixe_cod
data$edad_F3<-data$data_ava_F3-data$naixe_cod
data$edad_F4<-data$data_ava_F4-data$naixe_cod
data$edad_F5<-data$data_ava_F5-data$naixe_cod
data$edad_F6<-data$data_ava_F6-data$naixe_cod
data$edad_F7<-data$data_ava_F7-data$naixe_cod
data$edad_F8<-data$data_ava_F8-data$naixe_cod
data$edad_F9<-data$data_ava_F9-data$naixe_cod



