% 	14 (*) Написати дублікатор усіх елементів списку:
%   Приклад:
%   1> lesson2_task14:duplicate([a, b, c, c, d]).
%   [a, a, b, b, c, c, c, c, d, d]


-module(lesson2_task14).
-export([duplicate/1]).

duplicate(List) ->
    duplicate(List, []).

duplicate([], Acc) ->
    reverse(Acc);
    
duplicate([H | T], Acc) ->
    duplicate(T, [H, H | Acc]).



% Далі функція reverse з lesson2_task05 (перевернутий список)

reverse(List) ->
    reverse(List, []).

reverse([], NewList) ->
    NewList;
reverse([Head | Tail], NewList) ->
    reverse(Tail, [Head | NewList]).
