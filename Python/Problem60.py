from pe import isprime
print "Generating primes"
primes = []
for i in range(3,10000):
	if isprime(i):
		primes.append(i)
print primes
print "searching"
out = 0
fails = set()
for x in primes:
	print x
	for y in primes[2:]:
		if y < x or (x,y) in fails: #if a previously tested combo fails or y<x => we have tested it before in the form xy
			continue
		if isprime(int(str(x)+str(y))) and isprime(int(str(y)+str(x))): #time consuming prime check. must be prime before continuing. Repeat these two steps for the larger and larger loops.
			for z in primes[3:]:
				if z < y or (x,z) in fails or (z,y) in fails:
					continue
				if isprime(int(str(z)+str(y))) and isprime(int(str(y)+str(z))):
					if isprime(int(str(x)+str(z))) and isprime(int(str(z)+str(x))):
						for w in primes[4:]:
							if w < z or (x,w) in fails or (w,y) in fails or (w,z) in fails:
								 continue
							if isprime(int(str(w)+str(y))) and isprime(int(str(y)+str(w))): 
								if isprime(int(str(z)+str(w))) and isprime(int(str(w)+str(z))): 
									if isprime(int(str(x)+str(w))) and isprime(int(str(w)+str(x))):
										for v in primes[5:]:
											if v < w or (v,w) in fails or (v,x) in fails or (v,y) in fails or (v,z) in fails:
												continue
											if isprime(int(str(v)+str(x))) and isprime(int(str(x)+str(v))):
												if isprime(int(str(v)+str(y))) and isprime(int(str(y)+str(v))):
													if isprime(int(str(v)+str(z))) and isprime(int(str(z)+str(v))):
														if isprime(int(str(v)+str(w))) and isprime(int(str(w)+str(v))):
															print "WINNER"
															print x,y,z,w,v
															print x+y+z+w+v
															out = 1 #speed up our escape.
														else:
															fails.add((v,w))#add all combinations of failure to the set (the set has no order of pairings but maintains the order within each pair)
															fails.add((w,v))
													else:
														fails.add((v,z))
														fails.add((z,v))
												else:
													fails.add((v,y))
													fails.add((y,v))
											else:
												fails.add((v,x))
												fails.add((x,v))
										if out == 1:
											break
									else:
										fails.add((w,x))
										fails.add((x,w))
								else:
									fails.add((w,z))
									fails.add((z,w))
							else:
								fails.add((w,y))
								fails.add((y,w))
						if out == 1:
							break
					else:
						fails.add((x,z))
						fails.add((z,x))
				else:
					fails.add((y,z))
					fails.add((z,y))
			if out == 1:
				break
		else:
			fails.add((x,y))
			fails.add((y,x))
	if out == 1:
		break