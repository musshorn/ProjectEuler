#We will take "steps" to converge to the solution while tracking the current best

n = 1
d = 1
best = [0,1]

#Main loop
while d <= 1000000:

	#Looking at it as a bounded problem with 3/7 as the upper bound, if n/d is better than the current best then it serves as a better lower bound
	if 1.0*n/d > 1.0*best[0]/best[1] and 1.0*n/d < 1.0*3/7:
		best = [n,d]

	#Step depending on the size of n/d
	if 1.0*n/d >= 1.0*3/7: #Take a step to the left by increasing the denominator
		d += 1
	else: #Otherwise take a step to the right
		n += 1

print best