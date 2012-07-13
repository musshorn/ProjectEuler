found = False
i = 125874
while found == False:
	num = set(map(int,str(i)))
	i2 = set(map(int,str(i*2)))
	if len(num.intersection(i2)) == len(num):
		i3 = set(map(int,str(i*3)))
		if len(num.intersection(i3)) == len(num):
			i4 = set(map(int,str(i*4)))
			if len(num.intersection(i4)) == len(num):
				i5 = set(map(int,str(i*3)))	
				if len(num.intersection(i5)) == len(num):
					i6 = set(map(int,str(i*3)))
					if len(num.intersection(i6)) == len(num):
							print i
							found = True
	i = i + 1