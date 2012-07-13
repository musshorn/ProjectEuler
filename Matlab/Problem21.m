total = 0;
count = 0;
pairs(1:28) = 0;
for j = 1:10000
    counta = 0;
    countb = 0;
    for i = 1:j-1
        if mod(j,i) == 0
            counta = counta + i;
        end
    end
    
    for i = 1:counta-1
        if mod(counta,i) == 0;
            countb = countb+i;
        end
    end
    if countb == j && countb ~= counta
        total = total + counta;
        j
    end
end 
total
count