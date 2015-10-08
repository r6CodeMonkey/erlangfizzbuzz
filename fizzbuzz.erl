-module(fizzbuzz).

-export([run/1, print/1]).

print(B) when B rem 3 == 0, B rem 5 == 0 -> 
 io:format("fizz buzz ~w~n", [B]);
print(B) when B rem 3 == 0 -> 
 io:format("fizz ~w~n", [B]);
print(B) when B rem 5 == 0 -> 
 io:format("buzz ~w~n", [B]) ;
print(B) ->  io:format("~w~n", [B]).

run(A) when length(A) > 1 -> 
 print(hd(A)),
 run(tl(A));
run(A) -> 
  print(hd(A)).