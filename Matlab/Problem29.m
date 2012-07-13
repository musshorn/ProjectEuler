set = 4;
for a = 2:100
    for b = 2:100
        set = union(set,a^b);
    end
end
size(set)