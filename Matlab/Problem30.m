%9^5*5 = 295 245 which is the maximum number 
%not counting 1
 for i = 2:295245
    str = num2str(i);
    sum = 0;
    for j = 1:length(str)
        sum = sum + str2num(str(j))^5;
    end
    if sum == i
        total = total+sum;
    end
 end
 total