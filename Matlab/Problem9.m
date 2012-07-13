for a = 1:1000
    for b = 1:1000
        c=sqrt(a^2+b^2);
        if a+b+c == 1000
            a*b*c
            a
            b
            c
        end
    end
end