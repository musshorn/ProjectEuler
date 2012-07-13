%X * XXXX = XXXX < 10,000
it = 1;
for i = 1:9
    for j = 1000:9999
        if i*j<10000
           nums(it,1) = i;
           nums(it,2) = j;
           nums(it,3) = i*j;
           it = it+1;
        end
    end
end
for i = 10:99
    for j = 100:999
        if i*j<10000
           nums(it,1) = i;
           nums(it,2) = j;
           nums(it,3) = i*j;
           it = it+1;
        end
    end
end
total = 0;
used = 0;
for i = 1:length(nums)
    if length(strfind(num2str(nums(i,1)),'1')) == 1 || length(strfind(num2str(nums(i,2)),'1')) == 1 || length(strfind(num2str(nums(i,3)),'1')) == 1
        if length(strfind(num2str(nums(i,1)),'2')) == 1 || length(strfind(num2str(nums(i,2)),'2')) == 1 || length(strfind(num2str(nums(i,3)),'2')) == 1
            if length(strfind(num2str(nums(i,1)),'3')) == 1 || length(strfind(num2str(nums(i,2)),'3')) == 1 || length(strfind(num2str(nums(i,3)),'3')) == 1
                if length(strfind(num2str(nums(i,1)),'4')) == 1 || length(strfind(num2str(nums(i,2)),'4')) == 1 || length(strfind(num2str(nums(i,3)),'4')) == 1
                    if length(strfind(num2str(nums(i,1)),'5')) == 1 || length(strfind(num2str(nums(i,2)),'5')) == 1 || length(strfind(num2str(nums(i,3)),'5')) == 1
                        if length(strfind(num2str(nums(i,1)),'6')) == 1 || length(strfind(num2str(nums(i,2)),'6')) == 1 || length(strfind(num2str(nums(i,3)),'6')) == 1
                            if length(strfind(num2str(nums(i,1)),'7')) == 1 || length(strfind(num2str(nums(i,2)),'7')) == 1 || length(strfind(num2str(nums(i,3)),'7')) == 1
                                if length(strfind(num2str(nums(i,1)),'8')) == 1 || length(strfind(num2str(nums(i,2)),'8')) == 1 || length(strfind(num2str(nums(i,3)),'8')) == 1
                                    if length(strfind(num2str(nums(i,1)),'9')) == 1 || length(strfind(num2str(nums(i,2)),'9')) == 1 || length(strfind(num2str(nums(i,3)),'9')) == 1
                                        if isempty(intersect(used,nums(i,3)))
                                            total = total + nums(i,3);
                                            used = union(used,nums(i,3));
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