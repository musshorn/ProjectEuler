max = 0;
for i = 1:100000
    j = 1;
    num = '';
    while length(num) < 9
        num = [num,num2str(j*i)];
        j = j + 1;
    end
    if length(num) == 9
        if str2double(num) > max %need the pandigital conditons here
            if findstr(num,'1') > 0
                if findstr(num,'2') > 0
                    if findstr(num,'3') > 0
                        if findstr(num,'4') > 0
                            if findstr(num,'5') > 0
                                if findstr(num,'6') > 0
                                    if findstr(num,'7') > 0
                                        if findstr(num,'8') > 0
                                            if findstr(num,'9') > 0
                                                max = str2double(num);
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
max