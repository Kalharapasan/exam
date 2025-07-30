compare_numbers(X,Y):-
    X>Y -> write(X),
    write(' is greater than '),
    write(Y);
    X<Y -> write(X),
    write(' is lea than '),
    write(Y);
    write(X),
    wirte(' is equal to '),
    write(Y).
user:-
    write('Enter frist number: '),
    read(X),
    write('Enter second number: '),
    read(Y),
    nl,
    compare_numbers(X,Y).

student_garade:-
    write('Enter mark 1: '),
    read(Mark1),
    write('Enter mark 2: '),
    read(Mark2),
    write('Enter mark 3: '),
    read(Mark3),

    Average is(Mark1+Mark2+Mark3)/3,

    (   Average >= 50 ->
    write('Average: '),
        write(Average),
        write(' - Pass');
    write('Average '),
        write(Average),
        write('- Fail')
    ).

display_looping :-
    between(1, 5, _),  % Loop 5 times
    write('Looping...'), nl,
    fail.              % Force backtracking to repeat

count_to_10:-
    between(1,10,N),
    write(N),
    nl,
    fail.

count_down(Start):-
    integer(Start),
    Start >= 1,
    between(1,Start,N),
    CountDown is Start -N +1,
    write(CountDown),
    nl,
    fail.
