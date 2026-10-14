exam_data <- data.frame(
  name = c("Anastasia", "Dima", "Katherine", "James", "Emily"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0),
  attempts = c(1, 3, 2, 3, 2),
  qualify = c("yes", "no", "yes", "no", "no")
)

print(exam_data[c(1, 3), c("name", "score")])

exam_data$country <- c("USA", "Canada", "India", "UK", "Australia")
exam_data <- rbind(exam_data, data.frame(name = "Michael", score = 18.0, attempts = 1, qualify = "yes", country = "USA"))

exam_data <- exam_data[order(-exam_data$score), ]
print(exam_data)

write.csv(exam_data, "exam_data.csv", row.names = FALSE)
