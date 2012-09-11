#We want to maximise n/phi(n) = n/(n prod(1-1/p)) = 1/prod(1-1/p)
#So by minimising prod(1-1/p) we maximise the solution
#so we need to find 1 <= n <= 1,000,000 such that n has the most distinct prime factors

from pe import isprime

primes = []
for x in range(1,1000): #generate list of primes
	if isprime(x):
		primes.append(x)
ans = 1
i = 0
while ans * primes[i] < 1000000:
	ans *= primes[i]
	i+=1

print ans