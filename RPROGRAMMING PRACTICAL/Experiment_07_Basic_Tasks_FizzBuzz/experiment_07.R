n <- 24
factors <- (1:n)[n %% (1:n) == 0]
print(factors)

set.seed(1)
rand_int <- sample(-50:50, 10)
print(rand_int)

fb <- sapply(1:100, function(i) {
  if (i %% 15 == 0) "FizzBuzz"
  else if (i %% 3 == 0) "Fizz"
  else if (i %% 5 == 0) "Buzz"
  else as.character(i)
})
print(fb)
