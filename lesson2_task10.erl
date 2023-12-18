% Закодувати список за допомогою алгоритму RLE:
% 1> lesson2_task10:encode([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
% [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]
% Run-Length Encoding (RLE) algorithm for a list of elements

-module(lesson2_task10).
-export([encode/1]).

encode(List) ->
    encode(List, []).

encode([], Acc) ->
    reverse(Acc);
encode([H | T], Acc) ->
    {Num, Element, NewT} = count_run(H, T, 1),
    encode(NewT, [{Num, Element} | Acc]).

count_run(Element, [Element | T], Count) ->
    count_run(Element, T, Count + 1);
count_run(Element, Rest, Count) ->
    {Count, Element, Rest}.

% Далі функція з lesson2_task05 (перевернутий список)
	
reverse(List) ->
    reverse(List, []).

reverse([], NewList) ->
    NewList;
reverse([Head | Tail], NewList) ->
    reverse(Tail, [Head | NewList]).