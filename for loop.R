#Implement same code block using for loop.

var1 <- c("Hello", "Good Bye!")
var2 <- c("Bangalore", "Delhi")

for (i in var1) {
  for (j in var2) {
    print(paste(i,j))
  }
}

#Implement next and break into for loops using while code blocks as reference.

var1 <- c("Hello", "Good Bye!")
var2 <- c("Bangalore", "Delhi")

i <- 1
while (i <= length(var1)) {
  j <- 1
  while (j <= length(var2)) {
    if (var1[i] == "Good Bye!" && var2[j] == "Delhi") {
      break
    }
    if (var1[i] == "Hello" && var2[j] == "Delhi") {
      j <- j + 1
      next
    }
    print(paste(var1[i], var2[j]))
    j <- j + 1
  }
  i<-i+1
}