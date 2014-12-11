#1 -> 1
#2 -> 2
#3 -> 3
#4 -> 5
#5 -> 7

#Wiki leads me to Eulers generating function

lookup = {}
lookup[0] = 1
lookup[1] = 1
lookup[2] = 2

lookup_t = {}
def p(n):
	if (n < 0):
		return 0
	if lookup.get(n) != None:
		return lookup[n]
	t = 0
	for k in range(1,n):
		if (n - (3 * k ** 2 - k)/ 2 >= 0):
			t += (-1) ** (k + 1) * (p(n - (3 * k ** 2 - k)/ 2) + p(n - (3 * k ** 2 + k)/ 2))
		else:
			break
	lookup[n] = t
	return t

n = 1
while p(n) % 1000000 != 0:
	n += 1
	if n % 1000 == 0:
		print n, len(lookup), lookup[n-1]
print n, p(n)
