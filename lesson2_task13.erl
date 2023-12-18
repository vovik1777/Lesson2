%	13 (**) Написати декодер для стандартного алгоритму RLE:
%    Приклад:
%    1> lesson2_task13:decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]).
%    [a,a,a,a,b,c,c,a,a,d,e,e,e,e]


-module(lesson2_task13).
-export([decode/1]).

decode(RLEList) ->
    decode(RLEList, []).

decode([], Acc) ->
    reverse(Acc);
decode([{Count, Value} | Rest], Acc) ->
    DecodedRun = replicate(Count, Value),
    decode(Rest, reverse(DecodedRun, Acc)).

replicate(0, _) ->
    [];
replicate(N, Value) when N > 0 ->
    [Value | replicate(N - 1, Value)].


% Далі функція reverse з lesson2_task05 (перевернутий список)

reverse(List) ->
    reverse(List, []).

reverse([], NewList) ->
    NewList;
reverse([Head | Tail], NewList) ->
    reverse(Tail, [Head | NewList]).
