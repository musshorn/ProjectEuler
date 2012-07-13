%load the matrix into something.

biggest = 0;
%do horizontal to the right
for i = 1:20
    for j = 1:17
        if mat(i,j)*mat(i,j+1)+mat(i,j+2)+mat(i,j+3) > biggest
            biggest = mat(i,j)*mat(i,j+1)+mat(i,j+2)+mat(i,j+3);
        end
    end
end
%do vertically down
for i = 1:17
    for j = 1:20
        if mat(i,j)*mat(i+1,j)*mat(i+2,j)*mat(i+3,j) > biggest
            biggest = mat(i,j)*mat(i+1,j)*mat(i+2,j)*mat(i+3,j);
        end
    end
end
%diagonal right
for i = 1:17
    for j=1:17
        if mat(i,j)*mat(i+1,j+1)*mat(i+2,j+2)*mat(i+3,j+3) > biggest
            biggest = mat(i,j)*mat(i+1,j+1)*mat(i+2,j+2)*mat(i+3,j+3);
        end
    end
end
%diagonal left
for i = 4:20
    for j = 1:17
        if mat(i,j)*mat(i-1,j+1)*mat(i-2,j+2)*mat(i-3,j+3) > biggest
            biggest = mat(i,j)*mat(i-1,j+1)*mat(i-2,j+2)*mat(i-3,j+3);
        end
    end
end

 biggest       