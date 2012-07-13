%There's a integer sequence for everything. http://oeis.org/A060384
i = 1;
while floor(i*log10((1+sqrt(5))/2)-log10(5)/2)+1 ~= 1000
    i=i+1;    
end