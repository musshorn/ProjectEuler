#observe the pattern of numbers on the diagonal.
#up right starts at 2 then each extra ring out adds 8
#up left starts at 4 and adds 8
#down left starts at 6 adds 8
#down right starts at 8 adds 8
import time
def isprime(n):
	n=float(n)
	if n/2 == int(n/2) and n!=2:
		return False
	for div in range(3,int(n**0.5)+1,2):
		if n/div == int(n/div):
			return False
	return True
ne =1
nw = 1
sw = 1
se =1

dprime = 0
ratio = 1.0
primes = 1
i = 0
start_time = time.time()
while ratio > float(0.1):
	
	if i == 0:
		ne +=2
		nw +=4
		sw +=6
		se+=8
	else:
		ne +=2+8*i
		nw +=4+8*i
		sw +=6+ 8*i
		se +=8+8*i
		
	if isprime(ne):
		dprime +=1
		
	if isprime(nw):
		dprime+=1
	
	if isprime(sw):
		dprime+=1
	
	if isprime(se):
		dprime+=1
	
	primes += 4
	ratio = float(dprime)/float(primes)
	print ratio
	i = i+1
print time.time() - start_time, "seconds"
print i*2+1