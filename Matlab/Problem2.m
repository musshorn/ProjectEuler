start = 1;
state = 1;
next = start+state;
fib = [start state next];
sum = 0;
ticker = 0;
%code is bad and misses 2. Add 2 to the solution...
while next<4000000
   fib = [state next state+next];
   next = state+next;
   state=next - state;
   ticker = ticker+1;
   if mod(ticker,3)==0
       sum = sum + next
   end
end
sum