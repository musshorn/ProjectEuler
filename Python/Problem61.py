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
	
#Generate all relevent sequences, store in (type,num) pair
seq = []
for x in range(6):
	for y in range(141): #last number such that triangle(y)<10000
		if 1000 <= operation(y,x+3) <= 10000:
			seq.append((x+3,operation(y,x+3)))

#Find cycles and sum
for pair in seq: 
	for pair1 in seq:
		checked = []
		if pair[1] % 100 == pair1[1] / 100 and pair[0] != pair1[0]:
			checked.append(pair[0])
			checked.append(pair1[0])
			for pair2 in seq:
				if pair1[1] % 100 == pair2[1] / 100 and pair2[0] not in checked:
					checked.append(pair2[0])
					for pair3 in seq:
						if pair2[1] % 100 == pair3[1] / 100 and pair3[0] not in checked:
							checked.append(pair3[0])
							for pair4 in seq:
								if pair3[1] % 100 == pair4[1] / 100 and pair4[0] not in checked:
									checked.append(pair4[0])
									for pair5 in seq:
										if pair4[1] % 100 == pair5[1] / 100 and pair5[1] % 100 == pair[1]/100 and pair5[0] not in checked:
											checked.append(pair5[0])
											print pair,pair1,pair2,pair3,pair4,pair5
											print pair[1]+pair1[1]+pair2[1]+pair3[1]+pair4[1]+pair5[1]