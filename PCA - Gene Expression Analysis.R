leuk[,4999:5001]
ls()
write.csv(leuk,'leuk.csv')

#PCA 
install.packages('ggfortify')
library(ggfortify)
pcaout = prcomp(leuk[,2:5000],3,scale=TRUE)
autoplot(pcaout,data=leuk,colour='V5001',shape=FALSE,label.size=3)

leuk_new <- read.csv('/Users/supre/OneDrive/Documents/MSA/Linear Algebra/HW/leuk_new.csv')
pcaout_new = prcomp(leuk_new[,1:4812],3,scale=TRUE)
autoplot(pcaout,data=leuk,colour='V5001',shape=FALSE,label.size=3)
