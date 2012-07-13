fid = fopen('words.txt','w');
wordmap = containers.Map({1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,30,40,50,60,70,80,90,100},{'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety', 'hundred'});
totala =0;
onetotena = [3 3 5 4 4 3 5 5 4 3];
onetoninea = [3 3 5 4 4 3 5 5 4];
eleventonineteena = [6 6 8 8 7 7 9 8 8];
tensa = [6 6 5 5 5 7 6 6];
words = ['one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine' 'ten' 'eleven' 'twelve' 'thirteen' 'fourteen' 'fifteen' 'sixteen' 'seventeen' 'eighteen' 'nineteen' 'twenty' 'thirty' 'forty' 'fifty' 'sixty' 'seventy' 'eighty' 'ninety' 'hundred' 'and'];
for i = 1:9 %XX1-XX9
    for j = 1:8
        for k = 1:9
            totala = totala + onetoninea(i) + 7 + 3;
            totala = totala + tensa(j);
            totala = totala + onetoninea(k);
            fprintf(fid,'%s %s and %s %s\n',wordmap(i),wordmap(100),wordmap((j+1)*10),wordmap(k));
        end
    end   
end
%X00-X00
for i = 1:9%100,200...
    totala = totala + onetoninea(i) + 7 + 3;
    fprintf(fid,'%s %s \n',wordmap(i),wordmap(100));
end
%X0-X0
for i = 1:8%20,30,40
    totala = totala + tensa(i);
    fprintf(fid,'%s\n',wordmap((i+1)*10));
end
%X0X-X0X
for i = 1:9
    for j = 1:10%101 - 110 -> 910.
        totala = totala + onetoninea(i) + 7 + 3;
        totala = totala + onetotena(j);
        fprintf(fid,'%s %s and %s\n',wordmap(i),wordmap(100),wordmap(j));
    end
end
%X1X - X1X
for i = 1:9
    for j = 1:9
        totala = totala + onetoninea(j) + 7 + 3;
        totala = totala + eleventonineteena(i);
        fprintf(fid,'%s %s and %s\n',wordmap(i),wordmap(100),wordmap(j+10));
    end
end
%1-10
for i=1:10
    totala = totala + onetotena(i);
    fprintf(fid,'%s\n',wordmap(i));
end
%0XX
for i = 1:9
    totala = totala + eleventonineteena(i);
    fprintf(fid,'%s\n',wordmap(i+10));
end
for i = 1:8
    for j = 1:9
        totala = totala + tensa(i);
        totala = totala + onetoninea(j);
        fprintf(fid,'%s %s\n',wordmap((i+1)*10),wordmap(j));
    end
end
%XX0-XX0
for i = 1:9
    for j = 1:8%101 - 110 -> 990.
        totala = totala + onetoninea(i) + 7 + 3;
        totala = totala + tensa(j);
        fprintf(fid,'%s %s and %s\n',wordmap(i),wordmap(100),wordmap((j+1)*10));
    end
end
fclose(fid);
%one thousand.
totala+3+8;
totala