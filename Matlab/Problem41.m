max = 0;
%its aroun 7 million. This takes a while to run, mostly the string
%conversions
for i = 1000000:8000000
    num = num2str(i);
    count = 0;
    for k = 1:length(num)
        if ~isempty(findstr(num,num2str(k)))
            count = count + 1;
        end
    end
    nums = str2double(num);
    if count == length(num)
        if isprime(nums)
            if nums>max
                max = nums;
            end
        end
    end
end