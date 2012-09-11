from itertools import permutations

def CheckSoln(gon):
	if gon[0] + gon[1] + gon[6] != gon[1] + gon[2] + gon[7] \
	or gon[0] + gon[1] + gon[6] != gon[2] + gon[3] + gon[8] \
	or gon[0] + gon[1] + gon[6] != gon[3] + gon[4] + gon[9] \
	or gon[0] + gon[1] + gon[6] != gon[0] + gon[4] + gon[5]:
			return False
	
	if gon[5] > gon[6] \
	or gon[5] > gon[7] \
	or gon[5] > gon[8] \
	or gon[5] > gon[9]:
			return False

	output = str(gon[5])+str(gon[4])+str(gon[0])+ \
			 str(gon[6])+str(gon[0])+str(gon[1])+ \
			 str(gon[7])+str(gon[1])+str(gon[2])+ \
			 str(gon[8])+str(gon[2])+str(gon[3])+ \
			 str(gon[9])+str(gon[3])+str(gon[4])
			 
	if len(output) == 16:
		return output #Non zero returns are parsed as true
	
perms = permutations([1,2,3,4,5,6,7,8,9,10])
results = []
for x in perms:
	if CheckSoln(x): 
		results.append(int(CheckSoln(x)))

print max(results)