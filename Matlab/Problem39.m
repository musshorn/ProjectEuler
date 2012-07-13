%slowish. Could be optimised
max = 0;
for j = 1:1000
    count = 0;
    solutions = [0];
    for a = 1:400
        for b = 1:400
            c = sqrt(a^2+b^2);
            if a+b+c == j && isempty(intersect(solutions,a))
                count = count + 1;
                solutions = union(solutions, a);
                solutions = union(solutions, b);
            end
        end
    end
    if count > max
        max = count
        j
    end
end