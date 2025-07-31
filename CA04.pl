% Facts
country(sri_lanka).
country(turkey).
country(india).
country(singapore).
country(maldives).
country(pakistan).

% a. Create a list of countries
country_list([sri_lanka, turkey, india, singapore, maldives, pakistan]).

% b. Sort list in ascending order
sort_country_list(Sorted) :-
    country_list(List),
    sort(List, Sorted).

% c. Check if a country is in the list
is_country(Name) :-
    country_list(List),
    member(Name, List).

% d. Add Japan to the beginning of the list
add_japan(NewList) :-
    country_list(OldList),
    NewList = [japan | OldList].

% e. Count number of countries
count_countries(Count) :-
    country_list(List),
    length(List, Count).

% employee(ID, Name, Age, Designation, Salary, Weight, Height).
employee(emp201, nimal, 29, accountant, 55000, 63, 164).
employee(emp202, sharanya, 34, software_engineer, 145000, 62, 169).
employee(emp203, zaid, 30, system_analyst, 110000, 58, 172).
employee(emp204, ruwan, 41, network_engineer, 165000, 66, 155).
employee(emp205, pavithra, 36, hrm, 82000, 47, 150).
employee(emp206, theepika, 32, it_technician, 72000, 44, 151).
employee(emp207, dinusha, 24, web_developer, 88000, 36, 157).
employee(emp208, naveen, 26, data_scientist, 98000, 80, 178).
employee(emp209, hajara, 22, it_director, 75000, 41, 153).
employee(emp210, ishanthi, 44, qa_tester, 83000, 52, 161).

is_employee(Name) :-
    employee(_, Name, _, _, _, _, _).

count_employees(Count) :-
    findall(ID, employee(ID, _, _, _, _, _, _), List),
    length(List, Count).

average_salary(Avg) :-
    findall(Salary, employee(_, _, _, _, Salary, _, _), Salaries),
    sumlist(Salaries, Total),
    length(Salaries, Count),
    Count > 0,
    Avg is Total / Count.

get_promotion(Name) :-
    employee(_, Name, _, _, Salary, _, _),
    Salary >= 80000.

no_promotion(Name) :-
    employee(_, Name, _, _, Salary, _, _),
    Salary < 80000.

designation_employees(Designation, Names) :-
    findall(Name, employee(_, Name, _, Designation, _, _, _), Names).

