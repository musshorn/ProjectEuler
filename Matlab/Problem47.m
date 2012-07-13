%Brute force seems easiest due to not enough number theory. as usual
%efficiency is down the gurgler. python would be quicker with the set
%operations near the end...
%estimated running time of 3 mins
%tried 55982
for i = 1:500000
    if mod(i,10000) == 0
        i
    end
    a = factor(i);
    b = factor(i+1);
    c = factor(i+2);
    d = factor(i+3);
    sort(a);
	x = zeros(size(a));
    for j = 1:length(a)
        x(j) = sum(a==a(j));
    end
    for j = 1:length(a)
        if x(j)> 1
            a(j) = a(j)^x(j);
        end
    end
    a= unique(a);
    
    sort(b);
	z = zeros(size(b));
    for j = 1:length(b)
        z(j) = sum(b==b(j));
    end
    for j = 1:length(b)
        if z(j)> 1
            b(j) = b(j)^z(j);
        end
    end
    b= unique(b);
    
    sort(c);
	y = zeros(size(c));
    for j = 1:length(c)
        y(j) = sum(c==c(j));
    end
    for j = 1:length(c)
        if y(j)> 1
            c(j) = c(j)^y(j);
        end
    end
    c= unique(c);
    
    sort(d);
	q = zeros(size(d));
    for j = 1:length(d)
        q(j) = sum(d==d(j));
    end
    for j = 1:length(d)
        if q(j)> 1
            d(j) = d(j)^q(j);
        end
    end
    d= unique(d);
    if isempty(intersect(intersect(intersect(a,b),c),d)) && isempty(intersect(intersect(union(a,b),c),d)) && isempty(intersect(union(union(a,b),c),d)) && length(a) == 4 && length(b) == 4 && length(c) == 4 && length(d) == 4
        i
        factor(i)
        a
        i+1
        factor(i+1)
        b
        i+2
        factor(i+2)
        c
        i+3
        factor(i+3)
        d
        length(a)
        length(b)
        length(c)
        length(d)
        intersect(intersect(intersect(a,b),c),d)
        break
    end
end