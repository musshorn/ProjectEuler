%This is the sort of code you only run once...
factit =1;
facts(1:6965) = 0;
for i=1:28123
    divsum = 0;
    for j=1:i-1%potentially missing one?
        if mod(i,j) == 0
            divsum = divsum + j;
        end
    end
    if divsum > i
        facts(factit) = i;
        factit = factit+1;
    end
end
%facts now contains all the abundant numbers.
total = 0;
allabun(1:28123) = 0;
for i = 1:6965
    for j = 1:6965
        if facts(i)+facts(j) <= 28123
            allabun(facts(i)+facts(j)) = 1;
        end
    end
end
for i = 1:28123
    if allabun(i) == 0;
        total = total + i;
        i
    end
end
total