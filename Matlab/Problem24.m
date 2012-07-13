perm = perms([0 1 2 3 4 5 6 7 8 9]);
words = sortrows(perm);
list(1:3628800) = 0;
for i = 1:3628800
    list(i) = words(i,1)*1000000000+words(i,2)*100000000+words(i,3)*10000000+words(i,4)*1000000+words(i,5)*100000+words(i,6)*10000+words(i,7)*1000+words(i,8)*100+words(i,9)*10+words(i,10);
end
num2str(list(1000000))
