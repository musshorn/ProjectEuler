#Goal. Find the number of continued fractions <= 10000 with odd period
import math

#Calculates the continued fraction of the square root of n using http://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Continued_fraction_expansion
def calc_period(n):

    lim = int(math.sqrt(n))
    loops = 0
    d = 1
    m = 0
    a = lim
    while a != 2*lim:
        try:
            m = d*a -m
            d = (n-m*m)/d
            a = (lim+m)/d
            loops += 1
        except ZeroDivisionError: #Catches perfect squares
            return 0;
    return loops


total = 0
for i in range(10001):
    if calc_period(i) % 2 == 1:
            total+=1
print total