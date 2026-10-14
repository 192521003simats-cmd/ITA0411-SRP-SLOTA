library(reshape2)

m <- melt(airquality, id.vars = c("Month", "Day"), measure.vars = c("Ozone", "Solar.R", "Wind", "Temp"))
res <- dcast(m, Month ~ variable, mean, na.rm = TRUE)

print(round(res, 2))
