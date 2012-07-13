%populate list of 2 digit fractions < 1
it = 1;
for i = 1:99
    for j = 1:i-1
        frac(it,1) = i;
        frac(it,2) = j;
        it = it+1;
    end
end

%search it for fractions not divisible by 10 that satisfy the conditions
it = 1;
for i = 1:4851
    testn = 1;
    testd = 1;
    num = num2str(frac(i,2));
    den = num2str(frac(i,1));
    if length(num) == 2 && length(den) == 2
        if num(1) == den(1)
            testn = str2num(num(2));
            testd = str2num(den(2));
        elseif num(2) == den(1)
            testn = str2num(num(1));
            testd = str2num(den(2));
        elseif num(1) == den(2)
            testn = str2num(num(2));
            testd = str2num(den(1));
        elseif num(2) == den(2)
            testn = str2num(num(1));
            testd = str2num(den(1));
        end
    end
    if testn/testd == frac(i,2)/frac(i,1) && mod(frac(i,2),10)~= 0
        nums(it,1) = frac(i,2);
        nums(it,2) = frac(i,1);
        it = it+1;
    end
end

%Multiply out and simplify
numerator = 1;
denominator = 1;
for i = 1:length(nums)
    numerator = numerator * nums(i,1);
    denominator = denominator * nums(i,2);
end
total = sym(numerator/denominator)