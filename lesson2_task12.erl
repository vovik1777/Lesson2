
%  12 (**) Написати декодер для модифікованого алгоритму RLE:
%  Приклад:
%  1> lesson2_task12:decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]).
%  [a,a,a,a,b,c,c,a,a,d,e,e,e,e]



-module(lesson2_task12).
-export([decode_modified/1]).


% Допоміжна функція для додавання N копій Element до списку
append_n_times(_, 0, Acc) -> Acc;
append_n_times(Element, N, Acc) ->
    append_n_times(Element, N - 1, [Element | Acc]).

% Main decoding function
decode_modified(InputList) ->
    decode_helper(InputList, []).

% Допоміжна функція для декодування списку, закодованого RLE
decode_helper([], Acc) ->
    reverse(Acc);

decode_helper([{Count, Element} | Rest], Acc) when Count > 1 ->
    NewAcc = append_n_times(Element, Count, Acc),
    decode_helper(Rest, NewAcc);

decode_helper([Element | Rest], Acc) ->
    decode_helper(Rest, [Element | Acc]).



% Далі функція з lesson2_task05 (перевернутий список)

reverse(List) ->
    reverse(List, []).

reverse([], NewList) ->
    NewList;
reverse([Head | Tail], NewList) ->
    reverse(Tail, [Head | NewList]).
