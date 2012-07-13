biggest = 0;
for i=1:1000000
    num = i;
    count = 0;
    while num >1
        if mod(num,2) == 0
            num = num/2;
        else
            num = num*3+1;
        end
        count = count+1;
    end
    if count > biggest
        i
        biggest = count;
    end
end
%last i is output