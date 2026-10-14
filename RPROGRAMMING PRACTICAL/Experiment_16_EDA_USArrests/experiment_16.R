print(summary(USArrests))

print(rownames(USArrests)[which.max(USArrests$Rape)])
print(c(Max_Murder = max(USArrests$Murder), Min_Murder = min(USArrests$Murder)))
print(round(cor(USArrests), 2))

sub <- subset(USArrests, Assault > median(Assault) & Murder <= quantile(Murder, 0.25))
print(sub)

par(mfrow = c(2, 2))
hist(USArrests$Murder, main = "Murder Histogram")
plot(density(USArrests$Assault), main = "Assault Density")
plot(USArrests$Murder, USArrests$Assault, main = "Murder vs Assault")
barplot(head(sort(USArrests$Rape, decreasing = TRUE), 5), main = "Top 5 Rape Arrests")
