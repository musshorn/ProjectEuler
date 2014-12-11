n = 5
inf = 5

def pentagona(k):
	return k * (3 * k - 1) / 2

def pentagonb(k):
	return k * (3 * k + 1) / 2

lookup = {} #takes forever with no lookup table.
def p(n,d):
	d += 1
	if n == 0:
		return 1
	elif n < 0:
		return 0

	if n in lookup.keys():
		return lookup[n]

	x = 0
	for i in range(1,n+1):
		x += (-1) ** (i - 1) * (p(n - pentagona(i), d) + p(n - pentagonb(i), d))
	lookup[n] = x
	return x

a = p(100, 0)
print "Ans: ", a - 1 #exclude the 100+0 case