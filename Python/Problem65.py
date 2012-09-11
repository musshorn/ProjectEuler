#3 8 11 19 87 -> 19*4+11
#87 106 193 1264 -> 193*6+11
#1264 1457 2721 23225 -> 2721*8+1457
x1 = 2
x2 = 3
index = 1
for i in range(98):
	if i % 3 == 0:
		#print x,x1,x2
		x = x2*2*index+x1
		x1 = x2
		x2 = x
		index += 1
		#print x,x1,x2
	else:
		x = x1+x2
		x1= x2
		x2 = x
result = str(x)
output = 0
for n in result:
	output += int(n)
print output