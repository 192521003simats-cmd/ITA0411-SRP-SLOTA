fn <- function(x) x^2
lst <- list(vec = c(10, 20, 30), mat = matrix(1:4, 2, 2), func = fn)

print(lst)
print(lst$vec)
print(lst$func(5))
