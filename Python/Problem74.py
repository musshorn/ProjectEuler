'''
Interesting tidbit:

	The numbers don't seem to be "evenly" distributed. They only occur
	< 10,000
	200k
	300k
	400k
	700k
	900k

So there's some insight to be had which would speed this up.
'''

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

count = 0
for j in range(1000000):
	seen = set()
	i = j
	seen.add(j)
	length = 1
	while True:
		i = sumDigits(i)
		if i not in seen:
			seen.add(i)
			length += 1
		else:
			break
	if length == 60:
		print "DING: ", j
		count += 1
	if j % 100000 == 0:
		print j
print count	
