str = '';
i = 1;
%slooooooooooowwwwwwwww
while length(str) < 1000000
    str = [str,num2str(i)];
    i = i+1;
    if mod(i,1000) == 0
        length(str)
    end
end
str2double(str(1))*str2double(str(10))*str2double(str(100))*str2double(str(1000))*str2double(str(10000))*str2double(str(100000))*str2double(str(1000000))