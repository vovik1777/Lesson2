% Знайти N-й елемент списку: 
% c(lesson2_task03).

% lesson2_task03:element_at([a, b, c, d, e, f], 4).
% d
% lesson2_task03:element_at([a, b, c, d, e, f], 10).
% undefined

-module(lesson2_task03).
-export([element_at/2]).

% Функція - знайти N-й елемент списку
element_at(List, N) when is_list(List), N > 0 ->
    element_at(List, N, 1).

% Допоміжна функція порівнює поточний індекс (Counter) із цільовим індексом (N). Якщо вони збігаються, повертається голова списку.
element_at([H | _], N, N) ->
    H;
% Якщо індекси не збігаються, він рекурсивно викликає себе з хвостом списку та збільшує поточний індекс Counter.
element_at([_ | T], N, Counter) when Counter < N ->
    element_at(T, N, Counter + 1);
element_at(_, _, _) ->
    % N знаходиться поза межами або пустий список
    undefined.