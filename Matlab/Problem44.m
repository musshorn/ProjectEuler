%Theory:
%if the function takes a integer and returns a pentagonal number, then if i
%plug a random number into it and it returns a integer then that number i
%plugged in must be a pentagonal number
%inverse function = (sqrt(24*x+1)+1)/6
found =0;
i = 2;
while found == 0
    penta = i*(3*i-1)/2;
    for j = 1:i-1
       if i == 2167 && j == 1020
           disp derp
       end
       pentb = j*(3*j-1)/2;
       a = (sqrt((penta-pentb)*24+1)+1)/6;
       b = (sqrt((penta+pentb)*24+1)+1)/6;
       if floor(a) == a && floor(b) == b && ceil(a) == a && ceil(b) == b
           ans = penta-pentb;
           found = 1;
           break;
       end
    end
    i = i+1;
end