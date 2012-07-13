% %Code is nearly complete. ended up pulling the list from
% https://oeis.org/A016114 and counting the digits - 1 for 11.
% 
% %Generate list of primes below 1000000, this is omgslow
% % it = 1;
% % primes(1:78498) = 0;
% % for i = 2:1000000
% %     if isprime(i)
% %         primes(it) = i;
% %         it = it +1;
% %     end
% % end
% 
% %Search for cirularness
% count = 0;
% i = 1;
% marked(1:78498) = 0;
% while i < 78498 %need to add 4 to the solution. 
%     str = num2str(primes(i));
%     j = 0;
%     num = '';
%     temp = '';
%     found = 0;
%     x = 1;
%     while x<length(str)
%         if x == 1
%             for j = 1:length(str)-1;
%                 num = [num,str(j+1)];
%             end
%             num = str2double([num,str(1)]);
%         else
%             num = num2str(num);
%             temp = num2str(temp);
%             temp = '';
%             for j = 1:length(str)-1;
%                 temp = [temp,num(j+1)];
%             end
%             temp = str2double([temp,num(1)]);
%             num = temp;
%         end
%         if length(num2str(num)) ~= length(str) %eliminate 0 case, ie 101 ->011 = 11
%             x = length(str)+1;
%         else
%            k = 1;
%            
%            while found <= length(str) && k < 78498 && primes(k) <= num
%                 if primes(k) == num && marked(k) == 0
%                     found = found +1;
%                     marked(k) = 1;
%                 end
%                 k= k +1;
%            end
%            if found == length(str)-1
%                count = count +1;
%                num
%            end
%         end
%         
%         x = x+1;
%         %num contains the prime we are checking.
%     end
%     i = i +1;
% end
% sum = 0;
% for i = 1:78498
%     sum = marked(i)+sum;
%     if marked(i) == 1
%         primes(i);
%     end
% end