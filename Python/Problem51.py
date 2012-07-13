from pe import isprime

def gen_fam(prime, swap): #generate candidates for being 8 family
  c=0
  for digit in '0123456789':
    n = int(prime.replace(swap, digit))
    if (n>100000 and isprime(n)):
      c=c+1
  return c==8
 
primes = []
for x in range(100000,1000000): #generate list of primes
	if isprime(x):
		primes.append(x)
		
for prime in primes: #it
  if (prime>100000):
    primestr = str(prime)
    last_digit = primestr[5:6]
    if (primestr.count('0')==3 and gen_fam(primestr,'0') or primestr.count('1')==3 and last_digit != '1' and gen_fam(primestr,'1')  or primestr.count('2')==3 and gen_fam(primestr,'2')):
       print "Answer to PE51: ",primestr
