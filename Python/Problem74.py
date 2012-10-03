def factorial(n):
	if n == 1 or n == 0:
		return 1
	else:
		return n*factorial(n-1)
def sumDigits(n):
	total = 0
	for num in str(n):
		fact = factorial(int(num))
		total += fact
	return total

from time import sleep

count = 0
for x in range(100000):
	t = x
	results = [t]
	while sumDigits(t) not in results and len(results) <= 60:
		t = sumDigits(t)
		results.append(t)
	if len(results) == 60:
		count+=1
		print t#,results
	if x % 1000 == 0:
		print x
print count