f1 <- factor(cut(women$height, breaks = 3, labels = c("Low", "Mid", "High")))
set.seed(1)
f2 <- factor(sample(LETTERS[1:5], 10, replace = TRUE))

print(f1)
print(levels(f1))
print(table(f2))

levels(f2) <- c("V1", "V2", "V3", "V4", "V5")
print(f2)
