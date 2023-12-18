% Вирівняти структуру із вкладеними списками:
% lesson2_task07:flatten([a,[],[b,[c,d],e]]).
% [a, b, c, d, e]


-module(lesson2_task07).
-export([flatten/1]).

% Функція flatten/1 з вхідного списку вертає нормалізований список.
flatten(List) ->
    reverse(flatten(List, [])).


% Функція flatten/2 допоміжна яка рекурсивно оброблює елементи списку та збирає результат у новий "вирівняний" список.
flatten([], Acc) ->
    Acc;
flatten([H | T], Acc) when is_list(H) ->
    % Якщо "голова" це список, то рекурсивно "вирівнює" його
    NewAcc = flatten(H, Acc),
    flatten(T, NewAcc);
flatten([H | T], Acc) ->
    % Якщо "голова" не список, додає його до "акумулятора"
    NewAcc = [H | Acc],
    flatten(T, NewAcc).


% Далі функція з lesson2_task05 (перевернутий список)

reverse(List) ->
    reverse(List, []).

reverse([], NewList) ->
    NewList;
reverse([Head | Tail], NewList) ->
    reverse(Tail, [Head | NewList]).
