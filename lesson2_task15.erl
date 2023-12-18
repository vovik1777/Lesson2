% 15 (**) Написати функцію-реплікатор всіх елементів вхідного списку:
% Приклад:
% 1> lesson2_task15:replicate([a, b, c], 3).
% [a, a, a, b, b, b, c, c, c]


-module(lesson2_task15).
-export([replicate/2]).

% Function to replicate elements of a list N times
replicate([], _) ->
    [];
replicate([X | Xs], N) ->
%    replicate_element(X, N) ++ replicate(Xs, N).
 add_lists(replicate_element(X, N),replicate(Xs, N)).


% Helper function to replicate a single element N times
replicate_element(_, 0) ->
    [];
replicate_element(X, N) ->
    [X | replicate_element(X, N - 1)].
	
% Helper function add_lists - to add list to another list without ++ operator

add_lists([], List) ->
    List;
add_lists([Head | Tail], List) ->
    [Head | add_lists(Tail, List)].