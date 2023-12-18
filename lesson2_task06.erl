% Визначити, чи є список паліндромом:
% lesson2_task06:is_palindrome([1,2,3,2,1]).
% true

-module(lesson2_task06).
-export([is_palindrome/1]).

is_palindrome(List) ->
    ReverseList = reverse(List),
    List == ReverseList.

% Далі функція з lesson2_task05 (перевернутий список)
	
reverse(List) ->
    reverse(List, []).

reverse([], NewList) ->
    NewList;
reverse([Head | Tail], NewList) ->
    reverse(Tail, [Head | NewList]).