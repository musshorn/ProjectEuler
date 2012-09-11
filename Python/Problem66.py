#We are actually solving Pell's equation which is a specific "genre" of the Diophantine equation, see http://en.wikipedia.org/wiki/Pell%27s_equation
import math

#Calculates the continued fraction of the square root of n using http://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Continued_fraction_expansion
def calc_contfrac(n):
    lim = int(math.sqrt(n))
    d = 1
    m = 0
    a = lim
    out = [a]
    while a != 2*lim:
        try:
            m = d*a -m
            d = (n-m*m)/d
            a = (lim+m)/d
            out.append(a)
        except ZeroDivisionError: #Catches perfect squares
            return 0;
    return out

#Calch and calck are used to get the values http://en.wikipedia.org/wiki/Continued_fraction#Some_useful_theorems
def calch(an,n):
	hn=1
	hm=0

	#Do the initial case
	h = an[0]*hn+hm
	hm = hn
	hn = h
	for i in range(n+1): #Then for the repeated terms in the series
		j = i % (len(an)-1) #J loops between 1st and nth term as they repeat
		j+=1
		h = an[j]*hn+hm
		hm = hn
		hn = h
	return h

#As above
def calck(an,n):
	hn=0
	hm=1

	h = an[0]*hn+hm
	hm = hn
	hn = h
	for i in range(n+1):
		j = i % (len(an)-1)
		j+=1
		h = an[j]*hn+hm
		hm = hn
		hn = h
	return h

results = []
for D in range(1000):
	if math.sqrt(D) == math.floor(math.sqrt(D)):
		continue
	else:
		res = 0
		n = 0
		while res != 1: #Lagrange guarentees this will eventually be satisfied
			res = pow(calch(calc_contfrac(D),n),2)-D*pow(calck(calc_contfrac(D),n),2)
			n+=1
		results.append([calch(calc_contfrac(D),n-1),calck(calc_contfrac(D),n-1),D])
results.sort(reverse=True)
print results[0]