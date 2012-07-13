%Takes bout 4 minutes running but i suspect you can lower that 100000
%significantly since i think theres only 2 numbers satisfying that property
%http://mathworld.wolfram.com/Factorion.html is what its called.
total = 0;
for i = 3:100000
    num = num2str(i);
    sum = 0;
    for j = 1:length(num)
       sum = sum + factorial(str2double(num(j)));
    end
    if sum == i
        total = total + i;
    end
end