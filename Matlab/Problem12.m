tri = 1;
it = 2;
count = 0;

while count<250
    tri = tri+it;
    half = round(tri/2)+1;
    count = 0;
    for i=1:tri
        if mod(tri,i) == 0
            count = count +1;
        end
        if count > 250
            tri
        end
    end
    count
    it = it+1;
end
    
%holy dicks thats inefficient. Need to use prime factorization to speed it
%up.
%In other news http://www.wolframalpha.com/input/?i=divisors+76576500