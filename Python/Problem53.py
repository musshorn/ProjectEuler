def factorial(n):
    if n == 1:
        return 1
    else:
        return n*factorial(n-1)
def ncr(n,r):
    return factorial(n)/(factorial(r)*factorial(n-r))
print ncr(5,3)
total = 0
for i in range(1,101):
    for j in range(1,i):
        if ncr(i,j) > 1000000:
            total = total + 1
print total