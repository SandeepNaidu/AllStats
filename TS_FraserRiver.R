if(!require(fractal)) {install.packages("fractal"); require(fractal)}
if(!require(astsa)) {install.packages("astsa"); require(astsa)}
df <- read.csv("./fraser-river-at-hope-19131990.csv")
# exp14_1024 <- eqexp[1:1024,14]
# exp14_2048 <- eqexp[,14]
filename <- "./reportriver.pdf"
pdf(file=filename)
par(mfrow = c(2,1))
tsobj <- ts(df)
ts.plot(df)
dev.off()