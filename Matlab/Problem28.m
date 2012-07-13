%Generate spiral
spiralmat = spiral(1001);

%search diagonals (be sure to subtract 1 at the end)
i = 1;
j = 1;
total = 0;
%right down
while i <= 1001
    total = total + spiralmat(i,i);
    i = i + 1;
end

%left down
i = 1001;
j = 1;
while i >= 1
    total = total + spiralmat(i,j);
    i = i - 1;
    j = j+1;
end

total = total -1;
total