% Gender
male(johil).
male(john).
male(peter).
male(paul).
male(pranav).
male(sakthi).
male(yathav).
male(kiran).

female(johana).
female(samila).
female(rose).
female(nayana).
female(amala).
female(sana).

% Spouses
spouse(johil, johana).
spouse(johana, johil).

% Parent-child relationships
parent(johil, john).
parent(johana, john).
parent(johil, peter).
parent(johana, peter).
parent(johil, samila).
parent(johana, samila).
parent(johil, rose).
parent(johana, rose).

parent(paul, johil).
parent(paul, nayana).
parent(paul, amala).
parent(paul, sana).

parent(pranav, paul).
parent(pranav, sakthi).
parent(pranav, yathav).
parent(pranav, kiran).

% Father and Mother
father(F, C) :- parent(F, C), male(F).
mother(M, C) :- parent(M, C), female(M).

% Ancestor definition (recursive)
ancestor(A, D) :- parent(A, D).
ancestor(A, D) :- parent(A, X), ancestor(X, D).

% Count ancestors
count_ancestors(Person, Count) :-
    setof(A, ancestor(A, Person), Ancestors),
    length(Ancestors, Count).

% Check if someone has ancestors
has_ancestor(Person, Ancestor) :-
    ancestor(Ancestor, Person).

% List all males and females
all_males(Males) :-
    setof(M, male(M), Males).

all_females(Females) :-
    setof(F, female(F), Females).

% All ancestor pairs
all_ancestor_pairs(Pairs) :-
    setof((A, D), ancestor(A, D), Pairs).

% Define the initial list
countryList(['Sri Lanka', 'Turkey', 'India', 'Singapore', 'Maldives', 'Pakistan']).

sortedCountryList(Sorted) :-
    countryList(List),
    sort(List, Sorted).

is_country(Country) :-
    countryList(List),
    member(Country, List).

updatedCountryList(['Japan' | Tail]) :-
    countryList(Tail).

country_count(Count) :-
    countryList(List),
    length(List, Count).
