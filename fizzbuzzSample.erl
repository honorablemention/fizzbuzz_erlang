-module(fizzbuzzSample).
-export([fizzbuzz/0]).

applyFizz(X) ->
     case {X rem 3, X rem 5} of
        {0, 0} -> "FizzBuzz";
        {0, _} -> "Buzz";
        {_, 0} -> "Fizz";
        _ -> X
    end.

fizzbuzz() -> 
    Output = [applyFizz(X) || X <- lists:seq(1,100)],
    io:format("~p~n", [Output]).