from decimal import *
import math
getcontext().prec = 500

#sqrt from the ghetto
#http://www.afjarvis.staff.shef.ac.uk/maths/jarvisspec02.pdf
def calcsqrt(n, prec):
  a = 5 * n
  b = 5

  while (b < prec):
    if (a >= b):
      a = a - b
      b += 10
    else:
      a *= 100
      b = (b/10) * 100 + 5
  return b


def getSum(n):
  s = str(n)
  digits = s.split(".")[0][:100]
  total = 0
  for d in digits:
    total += int(d)
  return total 

total = 0
j = 1
for i in range(1, 100):
  if math.pow(j, 2) == i:
    j += 1
    continue
  total += getSum(calcsqrt(i, math.pow(10,150)))

print total