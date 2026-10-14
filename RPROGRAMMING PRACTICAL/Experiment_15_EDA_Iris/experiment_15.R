print(dim(iris))
print(summary(iris))

print(round(sapply(iris[, 1:4], sd), 2))
print(round(sapply(iris[, 1:4], quantile), 2))

print(aggregate(. ~ Species, data = iris, mean))

iris$Sepal_Cat <- cut(iris$Sepal.Length, breaks = c(4, 5.5, 6.5, 8), labels = c("S", "M", "L"))
print(table(Species = iris$Species, Category = iris$Sepal_Cat))
