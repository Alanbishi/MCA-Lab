def sumofsquares(n):
	s=0
	for i in range(n+1):
		s += i**2
	return s
n=int(input("Enter n: "))
print("Sum of squares of first {0} natural numbers: " .format(n),sumofsquares(n))
