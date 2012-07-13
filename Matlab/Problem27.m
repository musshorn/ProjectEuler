%Less than optimal code, uses the fact that to satisfiy the condition when
%n = 0 b must be prime (or 1.)
%
it = 1;
for a = 1:2000
    if(isprime(abs(a-1000))) || a == 999 || a == 1001 
        for b = 1:2000
            if (isprime(abs(b-1000))) || b == 999 || b == 1001 
                combinations(it,1) = a-1000;
                combinations(it,2) = b-1000;
                it=it+1;
            end
        end
    end
end
index = 0;
max = 0;
search = 0;
for i = 1:114244
    n = 0;
    found = 0;
    count = 0;
    while found == 0 && n^2+combinations(i,1)*n+combinations(i,2) > 0;
       if isprime(n^2+combinations(i,1)*n+combinations(i,2))
           count = count +1;
       else
           found = 1;
       end
       n=n+1;
    end
    if count > max;
        search = i;
        max = count;
    end
end
combinations(search,1)*combinations(search,2)