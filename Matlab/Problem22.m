%import names.txt which is alphabetically sorted.
clc
total = 0;
letters = containers.Map({'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'},{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26});
for i = 1:5163
   count = 0;
   name = char(names(i));
   for j=1:length(name)
       count = count + letters(name(j));
   end
   total = total + i*count;
end
total