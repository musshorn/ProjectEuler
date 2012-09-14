#Brute force, no time for classy answers. Takes about 20 seconds

maxd = 12000
fracs = set()
for d in range(1,maxd+1):
	for n in range(1, d):
		if 1.0*n/d > 1.0*1/3 and 1.0*n/d < 0.5:
			fracs.add(1.0*n/d)

print len(fracs)