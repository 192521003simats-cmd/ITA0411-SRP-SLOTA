df <- subset(iris, Species %in% c("versicolor", "virginica"))
df$Species <- factor(df$Species)

set.seed(42)
idx <- sample(1:nrow(df), 0.8 * nrow(df))
train <- df[idx, ]
test <- df[-idx, ]

model <- glm(Species ~ Petal.Length + Petal.Width, data = train, family = binomial)
prob <- predict(model, test, type = "response")
pred <- ifelse(prob > 0.5, "virginica", "versicolor")

cm <- table(Actual = test$Species, Predicted = pred)
print(cm)
print(paste("Accuracy:", sum(diag(cm)) / sum(cm)))
