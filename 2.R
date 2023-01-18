# Program 1: Vectors

A = c(23,69,101,150,32,69,18,22,23,161)

#a) Find length of the Vector
print(paste("The length of vector is: ",length(A)))

# b) mode of vector
print(paste("The type of A is: ",mode(A)))

# c) maximum and minimum elements of vector
print(paste("Maximum element in A is: ",max(A)))
print(paste("Maximum element in A is: ",min(A)))

# d) Sum of all elements of the vector
print(paste("Sum of all elements in A is: ",sum(A)))

# Print the 2nd, 6th and 9th elements
print(paste("Elements at the position 2,6 and 9 in A are: ",A[c(2.6,9)]))

print("Program 2")

# Program 2: Matrices
B = matrix(c(23,42,21,62,44,101,19,21), nrow=4, ncol=2, byrow=FALSE)
C = matrix(c(23,42,21,62,44,101,19,21), nrow=4, ncol=2, byrow=TRUE)

print("The By Row Matrix is: ")
print(B)

print("__________________________________________________________________________________________")

print("The By Column Matrix is: ")
print(C)

print("__________________________________________________________________________________________")

print("The mode of matrix is: ")
print(B)

print("__________________________________________________________________________________________")

print("The length of matrix is: ")
print(C)

print("__________________________________________________________________________________________")

print("The Transposed Matrix is: ")
print(t(B))


#Program 3 - Lists
D = c("Praise Paul","Grace Paul","Paulson")
E = c(20,22,53)
F = c(TRUE,TRUE,FALSE)
print(list(c(D,E,F)))