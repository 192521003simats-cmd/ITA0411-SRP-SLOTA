a1 <- array(1:6, dim = c(2, 3), dimnames = list(c("R1", "R2"), c("C1", "C2", "C3")))
a2 <- array(7:12, dim = c(2, 3), dimnames = list(c("R3", "R4"), c("C1", "C2", "C3")))

res <- rbind(a1, a2)
print(res)
