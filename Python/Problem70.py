#Since the sqrt of 10,000,000 ~= 3000 the first place i'm going to check is primes between 2000 and 5000 and take pairs

def primeFact(n):
	#Returns the number of prime factors of n
	#facts = [1] We don't want 1 in this particular implementation, 1 is not a prime
	facts = set()
	i = 2
	limit = n**0.5
	while i <= limit:
		if n % i == 0: 
			facts.add(i)
			n = n / i
			limit = n ** 0.5
		else:
			i += 1
	if n > 1:
		facts.add(n)
	return facts

def phi(p,q):
	#Takes a number, returns the totient function value
	#factors = primeFact(n) We are setting the factors. 
	return (p-1)*(q-1)
	#return int(output*n)
def isPermutation(n,m):
	#Take a number n, returns true/false if it is/isnt a permutation of m
	if sorted(str(n)) == sorted(str(m)):
		return True
	else:
		return False
def isPrime(n):
	n=float(n)
	if n/2 == int(n/2) and n!=2:
		return False
	for div in range(3,int(n**0.5)+1,2):
		if n/div == int(n/div):
			return False
	return True
primes = []
print "Generating Primes"
for p in range(2000,5000):
	if isPrime(p):
		primes.append(p)

print "Calculating min"
best = [9999.0,0]
for p in primes:
	for q in primes:
		if isPermutation(phi(p,q),p*q) and 1.0*p*q/phi(p,q) < best[0] and p*q < 10000000:
			print p*q,phi(p,q)
			best[0] = 1.0*p*q/phi(p,q)
			best[1] = p*q

print best
