% Порахувати кількість елементів списку:
% lesson2_task04:len([]).
% 0
% lesson2_task04:len([a, b, c, d]).
% 4


-module(lesson2_task04).
-export([len/1]).

len(List) ->
    len(List, 0).

len([], Count) ->
    Count;

len([_ | Tail], Count) ->
    len(Tail, Count + 1).