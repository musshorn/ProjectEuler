# We need to generate Pythagorian tiplets,
# a = m^2-n^2
# b = 2mn
# c = m^2 + n^2

# And we need to check all values such that sqrt(1,500,000/2)
import fractions

results = []
total = 0
lengths = [0]*1500001

for m in range(1,866):
	for n in range(1,m):
		if fractions.gcd(m,n) == 1 and (m-n) % 2 == 1:
			a = m ** 2 - n ** 2
			b = 2*m*n
			c = m ** 2 + n ** 2
			length = a + b + c

			while length <= 1500000:
				lengths[length] += 1
				if lengths[length] == 1:
					total +=1
				if lengths[length] == 2:
					total -=1
				length += a + b + c
print total