% Rules
respected(X) :-
    teacher(X),
    hardworking(X).

pass_exam(X) :-
    student(X),
    studies_hard(X).

graduate(X) :-
    pass_exam(X).

successful(X) :-
    graduate(X),
    has_job(X).

% User status checking rule
user_status(X) :-
    teacher(X), hardworking(X), write(X), write(' is a hardworking teacher'), nl;
    teacher(X), write(X), write(' is a teacher'), nl;
    successful(X), write(X), write(' is a successful student'), nl;
    has_job(X), write(X), write(' has a job'), nl;
    graduate(X), write(X), write(' has graduated'), nl;
    pass_exam(X), write(X), write(' has passed exams'), nl;
    student(X), studies_hard(X), write(X), write(' is a hardworking student'), nl;
    student(X), write(X), write(' is a student'), nl;
    write(X), write(' has no known status'), nl.

% Facts
student(ali).
studies_hard(ali).
has_job(ali).

student(kalhara).
studies_hard(kalhara).

teacher(saman).
hardworking(saman).
graduate(saman).
