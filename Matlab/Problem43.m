%Brute force is too slow. time to use the noggin, Observe that the last 3
%digits must be divisible by 17,
%similary the fourth last digits/10 are divisible by 13.
%etc.


%NEW PLAN
%Collect permutations, Eliminate cases and test. <3m cases to test.
total = 0;

perm = perms([1 2 3 4 5 6 7 8 9 0]);
it = 1;
for i = 1:length(perm)
    if perm(i,1) ~= 0
        if mod(perm(i,2)*100+perm(i,3)*10+perm(i,4),2) == 0
            if mod(perm(i,3)*100+perm(i,4)*10+perm(i,5),3) == 0
                if mod(perm(i,4)*100+perm(i,5)*10+perm(i,6),5) == 0
                    if mod(perm(i,5)*100+perm(i,6)*10+perm(i,7),7) == 0
                        if mod(perm(i,6)*100+perm(i,7)*10+perm(i,8),11) == 0
                            if mod(perm(i,7)*100+perm(i,8)*10+perm(i,9),13) == 0
                                if mod(perm(i,8)*100+perm(i,9)*10+perm(i,10),17) == 0
                                    total = total + sym(perm(i,1)*1000000000) + sym(perm(i,2)*100000000) + sym(perm(i,3)*10000000) + sym(perm(i,4)*1000000) + sym(perm(i,5)*100000) + sym(perm(i,6)*10000)+ sym(perm(i,7)*1000) + sym(perm(i,8)*100)+ sym(perm(i,9)*10) + sym(perm(i,10));
                                    terms(it) = perm(i,1)*1000000000 + perm(i,2)*100000000 + perm(i,3)*10000000 + perm(i,4)*1000000 + perm(i,5)*100000 + perm(i,6)*10000 + perm(i,7)*1000 + perm(i,8)*100 + perm(i,9)*10 + perm(i,10);
                                    it = it+1;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
for i = 1:6
    num2str(terms(i))
end
total























%PLAN: Build up lists of multiplies of those primes < 1000 and glue it all
%together then check for pandigitality


% i = 1;
% while i*17 < 1000
%     pseventeen(i) = i*17;
%     i = i + 1;
% end
% i = 1;
% while i*13 < 1000
%     pthirteen(i) = i*13;
%     i = i + 1;
% end
% i = 1;
% while i*11 < 1000
%     peleven(i) = i*11;
%     i = i + 1;
% end
% i = 2;
% while i*7 < 1000 
%     pseven(i-1) = i*7;
%     i = i + 1;
% end
% i = 2;
% while i*5 < 1000 
%     pfive(i-1) = i*5;
%     i = i + 1;
% end
% i = 4;
% while i*3 < 1000 
%     pthree(i-3) = i*3;
%     i = i + 1;
% end
% i = 5;
% while i*2 < 1000 
%     ptwo(i-4) = i*2;
%     i = i + 1;
% end
% i = 1;
% it = 1;
% eightnine(:,1:2) = 0;
% for i = 1:length(pseventeen)
%     for j = 1:length(pthirteen)
%         if pseventeen(i) > 100
%             steen = num2str(pseventeen(i));
%         else
%             steen = ['0',num2str(pseventeen(i))];
%         end
%         if pthirteen(j) > 100
%             tteen = num2str(pthirteen(j));
%         else
%             tteen = ['0',num2str(pthirteen(j))];
%         end
%         if steen(1:2) == tteen(2:3)
%             eightnine(it,1) = i;
%             eightnine(it,2) = j;
%             it = it + 1;
%         end
%     end
% end
% it = 1;
% seveneight(:,1:2) = 0;%7-8
% for i = 1:length(pthirteen)
%     for j = 1:length(peleven)
%         if pthirteen(i) > 100
%             steen = num2str(pthirteen(i));
%         else
%             steen = ['0',num2str(pthirteen(i))];
%         end
%         if peleven(j) > 100
%             tteen = num2str(peleven(j));
%         else
%             tteen = ['0',num2str(peleven(j))];
%         end
%         if steen(1:2) == tteen(2:3)
%             seveneight(it,1) = i;
%             seveneight(it,2) = j;
%             it = it + 1;
%         end
%     end
% end
% it = 1;
% sixseven(:,1:2) = 0;%7-6
% for i = 1:length(peleven)
%     for j = 1:length(pseven)
%         if peleven(i) > 100
%             steen = num2str(peleven(i));
%         else
%             steen = ['0',num2str(peleven(i))];
%         end
%         if pseven(j) > 100
%             tteen = num2str(pseven(j));
%         else
%             tteen = ['0',num2str(pseven(j))];
%         end
%         if steen(1:2) == tteen(2:3)
%             sixseven(it,1) = i;
%             sixseven(it,2) = j;
%             it = it + 1;
%         end
%     end
% end
% it = 1;
% fivesix(:,1:2) = 0;
% for i = 1:length(pseven)
%     for j = 1:length(pfive)
%         if pseven(i) > 100
%             steen = num2str(pseven(i));
%         else
%             steen = ['0',num2str(pseven(i))];
%         end
%         if pfive(j) > 100
%             tteen = num2str(pfive(j));
%         else
%             tteen = ['0',num2str(pfive(j))];
%         end
%         if steen(1:2) == tteen(2:3)
%             fivesix(it,1) = i;
%             fivesix(it,2) = j;
%             it = it + 1;
%         end
%     end
% end
% it = 1;
% fourfive(:,1:2) = 0;%6-5
% for i = 1:length(pfive)
%     for j = 1:length(pthree)
%         if pfive(i) > 100
%             steen = num2str(pfive(i));
%         else
%             steen = ['0',num2str(pfive(i))];
%         end
%         if pthree(j) > 100
%             tteen = num2str(pthree(j));
%         else
%             tteen = ['0',num2str(pthree(j))];
%         end
%         if steen(1:2) == tteen(2:3)
%             fourfive(it,1) = i;
%             fourfive(it,2) = j;
%             it = it + 1;
%         end
%     end
% end
% it = 1;
% threefour(:,1:2) = 0;%5-4
% for i = 1:length(pthree)
%     for j = 1:length(ptwo)
%         if pthree(i) > 100
%             steen = num2str(pthree(i));
%         else
%             steen = ['0',num2str(pthree(i))];
%         end
%         if ptwo(j) > 100
%             tteen = num2str(ptwo(j));
%         else
%             tteen = ['0',num2str(ptwo(j))];
%         end
%         if steen(1:2) == tteen(2:3)
%             threefour(it,1) = i;
%             threefour(it,2) = j;
%             it = it + 1;
%         end
%     end
% end

