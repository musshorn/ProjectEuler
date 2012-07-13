%Heuristic search. Whatever works i suppose, can be sped up significantly
%by lowering the maximum size of the for loop. Repeatition also occurs in
%the search which could be eliminated by picking better iterators



max = 0;
legth = 1;
END = 1000000
for i = 2:100;
    start = i;
    its = 1;
    total = 0;
    terms = 0;
    while start < END && total < END;
         while ~isprime(start)
             start = start + 1;
         end
         total = total + start;
         start = start + 1;
         terms(its) = start-1;
         its = its + 1;
         if isprime(total) && total < END && total > max  && length(terms) > legth
            max = total;
            terms;
            legth = length(terms);
        end
    end
    i
end

max