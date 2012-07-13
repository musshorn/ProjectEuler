%Similar idea to the last problem, inverse the formula and test for integer
%solutions.

%inv triangle   = (sqrt(8*x+1)-1)/2
%inv pent       = (sqrt(24*x+1)+1)/6
%inv hex        = (sqrt(8*x+1)+1)/4

%This works but it takes about 40 mins because the answer is massive,
%python at the bottom runs in around 2 secs, uses pythons sets which make
%it really quick to search lists
found = 0 ;
i = 40756;
while found == 0
    tri = (sqrt(8*i+1)-1)/2;
    pent = (sqrt(24*i+1)+1)/6;
    hex = (sqrt(8*i+1)+1)/4;
    if floor(tri) == tri && ceil(tri) == tri && floor(pent) == pent && ceil(pent) == pent && floor(hex) == hex && ceil(hex) == hex
        found = 1;
        i
    end
    i = i + 1;
end

% def p(n):
% 	return int((n*(3*n-1))/2)
% def t(n):
% 	return int((n*(n+1)/2))
% def h(n):
% 	return int((n*(2*n-1)))
% pent = set(p(x) for x in range(1,500000))
% tri = set(t(x) for x in range(1,500000))
% hex= set(h(x) for x in range(1,500000))
% 
% found = 0
% for a in pent:
% 	if a in tri and a in hex:
% 		print a
% 		found = found + 1
% 		if found == 3:
% 			break
% 	