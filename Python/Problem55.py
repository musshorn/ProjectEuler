#Quick reverse function
def reverse_int(n):
	return int(str(n)[::-1])

#Main loop.
count = 0
for i in range(1,10000):
	k = i
	j = 0
	found = 0
	while (j<50 and found == 0):
		k = reverse_int(k)+k
		if k == reverse_int(k):
			found = 1
		j = j + 1
	if found == 0:
		count = count +1
print count