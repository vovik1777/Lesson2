% Знайти останній елемент списку:
% c(lesson2_task01).
% lesson2_task01:last_element([a, b, c, d, f]).
% f

-module(lesson2_task01).
-export([last_element/1]).

% Якщо список пустий
last_element([]) ->
    undefined;

% Якщо у списку один елемент - він і є останнім
last_element([X]) ->
    X;

% Рекурсивний випадок: відкинути голову та продовжити з хвостом
last_element([_ | Tail]) ->
    last_element(Tail).