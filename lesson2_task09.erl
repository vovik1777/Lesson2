% Запакувати послідовні дублікати у вкладені списки:
% 1> lesson2_task09:pack([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
% [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

-module(lesson2_task09).
-export([pack/1]).

pack(List) ->
    pack(List, []).

pack([], Acc) ->
    reverse(Acc);

pack([H | T], Acc) ->
    {Dups, Rest} = included(H, T, [H]),
    pack(Rest, [Dups | Acc]).

included(_Element, [], Acc) ->
    {reverse(Acc), []};

included(Element, [Element | T], Acc) ->
    included(Element, T, [Element | Acc]);

included(_Element, List, Acc) ->
    {reverse(Acc), List}.


% Далі функція з lesson2_task05 (перевернутий список)
	
reverse(List) ->
    reverse(List, []).

reverse([], NewList) ->
    NewList;
reverse([Head | Tail], NewList) ->
    reverse(Tail, [Head | NewList]).