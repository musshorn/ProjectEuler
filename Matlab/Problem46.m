%Not sure how to go about this one yet, going to try for a seive style
%thing. seems to work


oc(1:1000000) = 0;
for i = 1:1000000
    if mod (i,2) == 0 || isprime(i)
        oc(i) = 1;
    end
end
oc(1) = 1;
for i = 1:10000
    if isprime(i)
        j = 1;
        while i+2*j^2<1000000
            oc(i+2*j^2) = 1;
            j = j+1;
        end
    end
end
i = 1;
while oc(i) == 1;
    i=i+1;
end
i
    