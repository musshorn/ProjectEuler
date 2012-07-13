%Load words42.txt into a variable, called words
map = containers.Map({'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'},{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26});
tri(1:10000) = 0;
for i = 1:10000
    tri(i) = 1/2*i*(i+1);
end
count = 0;
for i = 1:length(words42)
    word = char(words42(i));
    sum = 0;
    for j = 1:length(word)
        word(j)
        sum = sum + map(word(j));
    end
    k = 1;
    while sum >= tri(k)
        if sum == tri(k)
            count = count +1
        end
        k = k + 1;
    end
end
    