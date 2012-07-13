def digit_sum(n):
	count = 0
	for digit in str(n):
		count += int(digit)
	return count

#time to abuse python being able to deal with really large numbers...
max = 0
for a in range(1,100):
	for b in range(1,100):
		sum = digit_sum(pow(a,b))
		if sum > max:
			max = sum
print max