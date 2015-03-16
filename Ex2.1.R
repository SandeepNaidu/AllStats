findsamebirthdays <- function(ndays)
{
  samebdays <- function(n) return (as.numeric(1-prod((365-(n-1))/365)))
  eventsize <- c(1:ndays)
  eventslist <- list()
  for(i in 1:length(eventsize)) eventslist[[i]] <- as.vector(c(1:eventsize[i]))
  pdfvector <- vector()
  for(i in 1:length(eventslist)) pdfvector[[i]] <- samebdays(as.vector(eventslist[[i]],mode="integer"))
  png(file='./Ex2.1.png')
  plot(density(pdfvector))
  dev.off()
}