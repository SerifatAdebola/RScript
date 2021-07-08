args = commandArgs(trailingOnly=TRUE)
regrex <- read.csv(args[1])
png('r_orig.png')
plot(regrex, pch = 16, col = "blue")
dev.off()

lmRegrex = lm(x~y, data = regrex) #Create the linear regression
png('r_lm.png')
plot(regrex, pch = 16, col = "blue") #Plot the results
abline(lmRegrex) #Add a regression line
dev.off()

