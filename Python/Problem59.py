import math
def intobin(n):
	bin = ''
	while n>0:
		bin = str(n%2)[:1] + bin
		n = math.floor(n/2)
	return bin

def bintoint(n):
		ret = 0
		for i in range(0,len(n)):
			if n[i] == '1':
				ret += pow(2,len(n)-i)
		return ret/2

def xor(a,b):
	lena = len(a)
	lenb = len(b)
	while lena < lenb:
		a = "0"+a
		lena = len(a)
	while lenb < lena:
		b = "0" +b
		lenb = len(b)
	xord = ''
	for i in range(0,lena):
		if a[i] =='0' and b[i] == '1':
			xord = xord + '1'
		elif a[i] =='1' and b[i] == '0':
			xord = xord + '1'
		else:
			xord = xord + '0'
	return xord
	
f = open("p59.txt","w+")
nums = [79,59,12,2,79,35,8,28,20,2,3,68,8,9,68,45,0,12,9,67,68,4,7,5,23,27,1,21,79,85,78,79,85,71,38,10,71,27,12,2,79,6]
words = [[]]
i = 0
print "brace for O(n^4) operation, not as bad since its only 26^4"
while i < len(nums)-2:
	# for x in range(97,122):
		# for y in range(97,122):
			# for z in range(97,122):
				# a = bintoint(xor(intobin(nums[i]),intobin(x)))
				# b = bintoint(xor(intobin(nums[i+1]),intobin(y)))
				# c = bintoint(xor(intobin(nums[i+2]),intobin(z)))
				# words.append([chr(a)+chr(b)+chr(c),x,y,z])
	i +=3
	print i
for i in range(len(words)):
	f.write(str(words[i])+"\n")
f.close

print "took a punt that the word 'god' would occur. Searched the file and it came up with the encoding 103,111,100. Then searching that encoding yeileded partial words"
i = 0
while i < len(nums)-2:
	print chr(bintoint(xor(intobin(nums[i]),intobin(103))))+chr(bintoint(xor(intobin(nums[i+1]),intobin(111))))+chr(bintoint(xor(intobin(nums[i+2]),intobin(100))))
	i+=3
print "awww yeah, engrish. Lets wrap this baby up."
f = open("cipher1.txt","r")
w = f.readline().split(",")
total = 0
i = 0
while i < len(w):
	if i % 3 == 0:
		total += bintoint(xor(intobin(int(w[i])),intobin(103)))
	if i % 3 == 1:
		total+= bintoint(xor(intobin(int(w[i])),intobin(111)))
	if i % 3 == 2:
		total +=bintoint(xor(intobin(int(w[i])),intobin(100)))

	i+=1
print total