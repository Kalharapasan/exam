% Task01

% Declare dynamic predicate to allow updates
:- dynamic colors/1.

% 01. Create initial colors list
colors([red, blue, green, yellow, purple]).

% Helper predicate to handle color addition
add_color_if_needed(C) :-
    colors(Colors),
    (   memberchk(C, Colors) ->
        write(C), write(' is already in the list'), nl,
        NewColors = Colors
    ;   append(Colors, [C], NewColors),
        write(C), write(' has been added to the list'), nl
    ),
    retract(colors(Colors)),
    asserta(colors(NewColors)).


% 02. Check if any color is available
check_color(C) :-
    colors(Colors),
    (   memberchk(C, Colors) ->
        write(C), write(' is available in the list')
    ;   write(C), write(' is not available in the list')
    ).
