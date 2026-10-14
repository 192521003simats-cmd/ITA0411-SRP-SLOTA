f <- if (file.exists("advertising.csv")) "advertising.csv" else "Experiment_19_Simple_Linear_Regression/advertising.csv"
df <- read.csv(f)

model <- lm(Sales ~ Spend, data = df)
print(summary(model))

pred <- predict(model, data.frame(Spend = c(50, 100, 200)))
print(round(pred, 2))

plot(df$Spend, df$Sales, xlab = "Spend", ylab = "Sales", main = "Sales vs Spend")
abline(model, col = "red")
