it = 1;
count = 0;
%RUN ONCE ~2min execution
for i = 1:1000000
    x = num2str(i);
    y = '';
    for k = 1:length(num2str(i))
        y = [x(k),y];
    end
    if str2double(y) == i
        palen(it) = i;
        it = it+1;
    end
    if mod(i,1000) == 0
        i
    end
end
it = 1;
for i = 1:length(palen)
    base = dec2base(palen(i),2);
    y = '';
    for k = 1:length(base)
        y = [base(k),y];
    end
    y
    
    if y == base
        base
        nums(it) = palen(i)
        it = it+1;
    end
end
sum = 0;
for i = 1:length(nums)
    sum = sum + nums(i);
end
sum