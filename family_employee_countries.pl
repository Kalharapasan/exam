
% ----------- FAMILY TREE -----------

% Genders
female(mona).
female(monisa).
female(elizabeth).
female(margaret).
female(diana).
female(anne).
female(sarah).
female(zara).
female(johana).
female(monalisa).

male(george).
male(samith).
male(philip).
male(charles).
male(mark).
male(andrew).
male(edward).
male(william).
male(harry).
male(peter).

% Spouses
spouse(george, mona).
spouse(mona, george).
spouse(samith, monisa).
spouse(monisa, samith).
spouse(elizabeth, philip).
spouse(philip, elizabeth).
spouse(charles, diana).
spouse(diana, charles).
spouse(anne, mark).
spouse(mark, anne).
spouse(andrew, sarah).
spouse(sarah, andrew).
spouse(edward, monalisa).
spouse(monalisa, edward).

% Parent-child relationships
parent(george, elizabeth).
parent(george, samith).
parent(george, margaret).
parent(mona, elizabeth).
parent(mona, samith).
parent(mona, margaret).
parent(samith, diana).
parent(monisa, diana).
parent(elizabeth, charles).
parent(elizabeth, anne).
parent(elizabeth, andrew).
parent(elizabeth, edward).
parent(philip, charles).
parent(philip, anne).
parent(philip, andrew).
parent(philip, edward).
parent(charles, william).
parent(charles, harry).
parent(diana, william).
parent(diana, harry).
parent(anne, peter).
parent(mark, peter).
parent(andrew, zara).
parent(sarah, zara).
parent(edward, johana).
parent(edward, monalisa).
parent(monalisa, johana).
parent(monalisa, monalisa).

% Rules
child(X, Y) :- parent(Y, X).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
great_grandparent(X, Y) :- parent(X, Z), grandparent(Z, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
brother(X, Y) :- sibling(X, Y), male(X).
sister(X, Y) :- sibling(X, Y), female(X).
son(X, Y) :- parent(Y, X), male(X).
daughter(X, Y) :- parent(Y, X), female(X).
uncle(X, Y) :- brother(X, Z), parent(Z, Y).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).
brother_in_law(X, Y) :- spouse(Y, Z), brother(X, Z).
brother_in_law(X, Y) :- spouse(X, Z), sibling(Z, Y).
sister_in_law(X, Y) :- spouse(Y, Z), sister(X, Z).
sister_in_law(X, Y) :- spouse(X, Z), sibling(Z, Y).
first_cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).

% ----------- FACTORIAL AND FIBONACCI -----------

factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

% ----------- EMPLOYEE DATABASE -----------

employee(111, peter, 25, accountant, 50000, 75, 162).
employee(112, askar, 37, software_engineer, 150000, 70, 165).
employee(113, amal, 28, system_analyst, 100000, 55, 170).
employee(114, kumar, 40, network_engineer, 160000, 60, 152).
employee(115, divya, 37, hrm, 80000, 45, 148).
employee(116, selvanayagi, 35, it_technician, 75000, 40, 150).
employee(117, malar, 23, web_developer, 85000, 35, 158).
employee(118, suresh, 25, data_scientist, 95000, 78, 180).
employee(119, fathima, 23, it_director, 70000, 42, 155).
employee(120, kavya, 45, qa_tester, 85000, 50, 160).

is_employee(Name) :- employee(_, Name, _, _, _, _, _).

employee_count(Count) :-
    findall(ID, employee(ID, _, _, _, _, _, _), List),
    length(List, Count).

all_employees(List) :-
    findall(Name, employee(_, Name, _, _, _, _, _), List).

average_salary(Avg) :-
    findall(Salary, employee(_, _, _, _, Salary, _, _), Salaries),
    sumlist(Salaries, Total),
    length(Salaries, Count),
    Count > 0,
    Avg is Total // Count.

get_promotion(Name) :-
    employee(_, Name, _, _, Salary, _, _),
    Salary >= 80000.

no_promotion(Name) :-
    employee(_, Name, _, _, Salary, _, _),
    Salary < 80000.

designation(Name, Designation) :-
    employee(_, Name, _, Designation, _, _, _).

kumar_details(ID, Salary) :-
    employee(ID, kumar, _, _, Salary, _, _).

bmi(Name, BMI) :-
    employee(_, Name, _, _, _, Weight, HeightCM),
    HeightM is HeightCM / 100,
    BMI is Weight / (HeightM * HeightM).

can_donate(Name) :-
    employee(_, Name, Age, _, _, Weight, _),
    Age >= 18,
    Weight >= 50.

cannot_donate(Name) :-
    employee(_, Name, Age, _, _, Weight, _),
    (Age < 18 ; Weight < 50).

% ----------- COUNTRY LIST OPERATIONS -----------

% Initial country list
countryList(['Sri Lanka', 'Turkey', 'India', 'Singapore', 'Maldives', 'Pakistan']).

% Sort countries in ascending order
sortedCountryList(Sorted) :-
    countryList(List),
    sort(List, Sorted).

% Check if a country is in the list
is_country(Country) :-
    countryList(List),
    member(Country, List).

% Add Japan at the beginning of the list
updatedCountryList(['Japan' | Tail]) :-
    countryList(Tail).

% Count number of countries in the list
country_count(Count) :-
    countryList(List),
    length(List, Count).
