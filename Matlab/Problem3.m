%600851475143 
largest = 0;
for i = 100:775146,
    if mod(600851475143,i) == 0
        if isprime(i)
            largest = i
        end
    end
end
largest       