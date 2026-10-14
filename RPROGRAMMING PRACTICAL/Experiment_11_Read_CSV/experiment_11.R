f <- if (file.exists("student_scores.csv")) "student_scores.csv" else "Experiment_11_Read_CSV/student_scores.csv"
df <- read.csv(f)

print(head(df))
print(summary(df))
