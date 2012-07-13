found = 0;
it = 1;
i = 10;
primes(1:11) = 0;
while found < 11
    if isprime(i)
        str = num2str(i);
        num = '';
        count = 0;
        for j = 2:length(str);
            num = str(j:end);
            numr = str(1:j-1);
            if isprime(str2double(num)) && isprime(str2double(numr))
                count = count +1;
            end
        end
        if count == length(str)-1
            found = found + 1;
            primes(it) = i;
            it = it+1;
        end
    end
    i = i+1;
end
sum = 0;
for i = 1:11
    sum = primes(i)+sum
end