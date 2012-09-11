def split(number):
	out = []
	for char in str(number):
		out.append(int(char))
	return sorted(out,reverse=True)

#Since all the permutations of a number are going to contain the same numbers if we always look at the largest possible permutation and count how many of these we have
#eg 3^3 = 27 so we store 72

#numap is a list of lists, the first lists is the largest permutation, the second list is the number of times it has been found, the third list is the cube that generates that permutation
numap = [[],[],[]]


for x in range(10000):
	num = split(x ** 3)
	if num in numap[0]:
		numap[1][numap[0].index(num)] +=1
	else:
		numap[0].append(num)
		numap[1].append(1)
		numap[2].append(x ** 3)
	if 5 in numap[1]:
		print numap[2][numap[1].index(5)]
		break
