%find all primes between 1000-9999
%subtract 2 primes, add the difference to (each?) of them see if thats a
%prime.
%party hard

it = 1;
perm(1:1061) = 0;
for i = 1000:9999
    if isprime(i)
        perm(it) = i;
        it = it +1;
    end
end

it = 1;
for i = 1:1060
    for j = i+1:1061
        diff = perm(j)-perm(i);
        if isprime(perm(j)+diff) && perm(j)+diff < 10000
            testp(it,1) = perm(i);
            testp(it,2) = perm(j);
            testp(it,3) = perm(j)+diff;
            it = it+1;
        end
    end
end
for i = 1:length(testp)
    a = num2str(testp(i,1));
    b = num2str(testp(i,2));
    c = num2str(testp(i,3));
    finda = 0;
    findb = 0;
    findc = 0;
    for j = 1:4
        if isempty(findstr(b,a(j))) || isempty(findstr(c,a(j)))
            finda = 1;
        end
    end
    for j = 1:4
        if isempty(findstr(a,b(j))) || isempty(findstr(c,b(j)))
            findb = 1;
        end
    end
    for j = 1:4
        if isempty(findstr(b,c(j))) || isempty(findstr(a,c(j)))
            findc = 1;
        end
    end
    if finda == 0 && findb == 0 && findc == 0
        testp(i,1)
        testp(i,2)
        testp(i,3)
    end
end
