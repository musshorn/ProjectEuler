f = open('triangle.txt')
triangle = []
for line in f:
	triangle.append(map(int,line.split(" ")))
n = len(triangle)-1
while n>0:
	col=len(triangle[n-1])
	for i in range(col):
		triangle[n-1][i] += max(triangle[n][i],triangle[n][i+1])
	n-=1
print triangle[0][0]