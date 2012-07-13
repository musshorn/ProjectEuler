#generates a sequence of numbers in a range
def genSeq(min,max,mode):
	out = []
	seq = 1
	i = 1
	while seq < max:
		if seq > min:
			out.append(seq)
		i+=1
		seq = operation(i,mode)
	return out

#Returns the a number from the specified sequence
def operation(i,mode):
	if mode == 3:
		return i*(i+1)/2
	if mode == 4:
		return i*i
	if mode == 5:
		return i*(3*i-1)/2
	if mode == 6:
		return i*(2*i-1)
	if mode == 7:
		return i*(5*i-3)/2
	if mode == 8:
		return i*(3*i-2)
def checkCyclic(nums):
	
#Generate all relevent sequences
tri = genSeq(1000,10000,3)
sqr = genSeq(1000,10000,4)
pen = genSeq(1000,10000,5)
hex = genSeq(1000,10000,6)
hep = genSeq(1000,10000,7)
oct = genSeq(1000,10000,8)


