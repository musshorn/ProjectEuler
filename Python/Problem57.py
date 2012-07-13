''' Observe the pattern in the numerator and denomiator of the fractions
3/2 7/5 17/12
numerator_n+1 = numerator_n + 2*denmoniator_n
denomitator_n+1 = numerator_n+denominator_n
'''

n = 3
d = 2

total = 0

for i in range(1,1000):
	n += 2*d
	d = n - d
	if len(str(n)) > len(str(d)):
		total +=1

print total