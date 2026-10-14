surv_class <- apply(Titanic, c("Survived", "Class"), sum)
print(surv_class)

par(mfrow = c(1, 3))
barplot(surv_class, beside = TRUE, legend.text = TRUE, main = "Survival by Class")

surv_gender <- apply(Titanic, c("Survived", "Sex"), sum)
barplot(surv_gender, beside = TRUE, legend.text = TRUE, main = "Survival by Gender")

age_dist <- apply(Titanic, "Age", sum)
barplot(age_dist, main = "Age Distribution")
