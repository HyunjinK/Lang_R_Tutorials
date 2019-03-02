library("treemap")
library("wordcloud")
data(GNI2014)
m <- GNI2014[, c(1,5)]
head(m, 10)
s <- sort(m$GNI, decreasing = TRUE)
head(m)

wordcloud(m$iso3, m$GNI, max.words = 30, colors = colors(), use.r.layout = FALSE)
