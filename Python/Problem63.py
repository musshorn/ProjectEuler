#The number must have the form 10^(n-1)<=x^n<10^n
#This gives us an upper bound on x, since if we take the (n-1)th root we get 1<=x<10
#x must be a integer so x=9 is the upper bound

#For the lower bound consider, 10^(n-1) <= x^n
#Taking the log_10 of both sides gives n-1 <= n log(x)
#n is by definition >0 integer so (n-1)/n <= log(x)
#Now remove the log on x to get 10^((n-1)/n) <= x

#Now as values of n get large the limit as n -> inf. of (n-1)/n = 1
#ie we end up with a lower bound of 10^1 = 10 <= x < 9 so there will be no more x satisfying this equation

#so all we need to solve is the following small loop
import math

lower = 0
n = 1
ans = 0

while lower <10:
	lower = int(math.ceil(pow(10,(n-1.0)/n))) #note 1.0 for floating point division
	ans += 10 - lower
	n += 1
print ans