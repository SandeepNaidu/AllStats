if(!require(fractal)) {install.packages("fractal"); require(fractal)}
if(!require(astsa)) {install.packages("astsa"); require(astsa)}
data(eqexp)
exp14_1024 <- eqexp[1:1024,14]
exp14_2048 <- eqexp[,14]
filename <- "./report.pdf"
pdf(file=filename)
par(mfrow = c(2,1))
ts.plot(exp14_1024)
ts.plot(exp14_2048)
dev.off()