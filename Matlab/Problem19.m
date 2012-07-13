% 1 Jan 1901 = Tuesday
fid = fopen('words.txt','w');
year = 1900;
day = 2;
month = 1;
date = 1;
monthz = containers.Map({1,2,3,4,5,6,7,8,9,10,11,12},{'January', 'Febuary', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'});
days = containers.Map({1,2,3,4,5,6,0},{'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'});
months = containers.Map({1,2,3,4,5,6,7,8,9,10,11,12},{31,28,31,30,31,30,31,31,30,31,30,31});
monthsl = containers.Map({1,2,3,4,5,6,7,8,9,10,11,12},{31,29,31,30,31,30,31,31,30,31,30,31});
count = 0;
for j=1:100
    for k = 1:12
        date = 1;
        if mod(year+j,4) == 0
            for i =1:monthsl(month)
                if date == 1
                    if day == 0
                        count = count +1;
                    end
                end
                fprintf(fid,'Today is %s the %d of %s %d\n',days(day),round(date),monthz(month),round(year+j));
                day = day+1;
                if day == 7;
                    day = 0;
                end
                date=date+1;
            end
        else
            for i =1:months(month)
                if date == 1
                    if day == 0
                        count = count +1;
                    end
                end
                fprintf(fid,'Today is %s the %d of %s %d\n',days(day),date,monthz(month),year+j);
                day = day+1;
                if day == 7;
                    day = 0;
                end
                date=date+1;
            end
        end
        month = month+1;
        if month == 13
            month = 1;
        end
    end
end
fclose(fid);
day
month
year+j
count