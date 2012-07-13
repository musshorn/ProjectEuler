number = 0;
for i = 100:999
   for j = 100:999 
       x = num2str(i*j);
       for k =1:length(x)
           length(x);
           y(k) = x(length(x)-k+1);
       end
       if x == y
          if str2num(x) > number 
            number = str2num(x);
          end
       end
       y = '';
   end
end
number
%Inneficient. Consider that a palendrome will have the form abccba ie
%100000a+10000b+1000c+100c+10b+a