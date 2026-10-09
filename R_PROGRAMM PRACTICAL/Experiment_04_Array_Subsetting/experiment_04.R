v1 <- 1:12
v2 <- 13:24
arr <- array(c(v1, v2), dim = c(3, 4, 2), dimnames = list(c("R1", "R2", "R3"), c("C1", "C2", "C3", "C4"), c("T1", "T2")))

print(arr)
print(arr[2, 3, 1])
print(arr[2, , 2])
print(arr[, 1, 1])
