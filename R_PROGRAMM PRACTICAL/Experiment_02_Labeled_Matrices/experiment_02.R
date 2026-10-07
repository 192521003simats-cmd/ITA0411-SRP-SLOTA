m1 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE, dimnames = list(paste0("R", 1:5), paste0("C", 1:4)))
m2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE, dimnames = list(paste0("r", 1:3), paste0("c", 1:3)))
m3 <- matrix(1:4, nrow = 2, ncol = 2, byrow = TRUE, dimnames = list(c("A", "B"), c("X", "Y")))

print(m1)
print(m2)
print(m3)
