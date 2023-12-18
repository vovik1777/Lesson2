% Перевернути список:
% lesson2_task05:reverse([1,2,3]).
% [3,2,1]

-module(lesson2_task05).
-export([reverse/1]).

reverse(List) ->
    reverse(List, []).

reverse([], NewList) ->
    NewList;
reverse([Head | Tail], NewList) ->
    reverse(Tail, [Head | NewList]).