% Закодувати список за допомогою модифікованого алгоритму RLE:
% 1> lesson2_task11:encode_modified([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
% [{4,a},b,{2,c},{2,a},d,{4,e}]

-module(lesson2_task11).
-export([encode_modified/1]).

% Закодувати список за допомогою модифікованого алгоритму RLE
encode_modified(List) ->
    encode_modified(List, []).

% Допоміжна функція для кодування
encode_modified([H | T], Acc) ->
    % Підрахунок кількості послідовних входжень поточного елемента
    {Count, Rest} = count_occurrences(H, T, 1),

    % Вирішення, чи додати до накопичувача сам елемент або кортеж
    UpdatedAcc = case Count of
        1 -> [H | Acc];
        _ -> [{Count, H} | Acc]
    end,

    % Продовження кодування решти списку
    encode_modified(Rest, UpdatedAcc);

% Коли список порожній, перевертаємо накопичувач, щоб отримати остаточний результат
encode_modified([], Acc) ->
    reverse(Acc).

% Допоміжна функція для підрахунку послідовних входжень елемента у списку
count_occurrences(_, [], Count) ->
    % Якщо список порожній, повертаємо кількість і список, що залишився
    {Count, []};
count_occurrences(Elem, [Elem | T], Count) ->
    % Якщо поточний елемент дорівнює попередньому, збільшити кількість Count
    count_occurrences(Elem, T, Count + 1);
count_occurrences(_, List, Count) ->
    % Якщо зустрічається інший елемент, повертається кількість і список, що залишився
    {Count, List}.


% Далі функція з lesson2_task05 (перевернутий список)

reverse(List) ->
    reverse(List, []).

reverse([], NewList) ->
    NewList;
reverse([Head | Tail], NewList) ->
    reverse(Tail, [Head | NewList]).
