model <- lm(weight ~ Time + Diet, data = ChickWeight)
print(summary(model))

pred <- predict(model, ChickWeight)
err <- c(MSE = mean((ChickWeight$weight - pred)^2), RMSE = sqrt(mean((ChickWeight$weight - pred)^2)))
print(round(err, 2))

new_pred <- predict(model, data.frame(Time = 10, Diet = factor("1", levels = levels(ChickWeight$Diet))))
print(round(new_pred, 2))
