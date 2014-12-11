import math

def sieve(n):
	status = []
	for i in range(n):
		status.append(True)

	maxN = int(math.sqrt(n))
	for i in range(2, maxN + 1):
		for j in range(i,n):
			if (i * j < n):
				status[i * j] = False
	output = [x for x in range(n) if status[x]][2:] # 0,1 are not prime
	return output

primes = sieve(100)
p = 2

while True:
	ways = [0] * (p + 1)
	ways[0] = 1

	for prime in primes:
		for test in range(prime,p+1):
			ways[test] += ways[test - prime]

	if (ways[p] > 5000):
		break

	p += 1
print p,ways[p]
