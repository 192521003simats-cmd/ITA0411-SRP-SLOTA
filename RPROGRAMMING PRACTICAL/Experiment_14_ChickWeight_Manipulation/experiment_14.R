library(reshape2)

df <- ChickWeight[order(-ChickWeight$weight), ]
print(head(df, 3))

m <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"), measure.vars = "weight")
res <- dcast(m, Diet ~ variable, mean)
print(round(res, 2))
