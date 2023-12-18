% Видалити послідовні дублікати:
% > lesson2_task08:compress([a,a,a,a,b,c,c,a,d,e,e,e,e]).
% [a, b, c, a, d, e]



-module(lesson2_task08).
-export([compress/1]).

% Remove sequential duplicates from a list
compress([]) ->
    [];
compress([X]) ->
    [X];
compress([X, X | Rest]) ->
    compress([X | Rest]);
compress([X, Y | Rest]) ->
    [X | compress([Y | Rest])].