male(john).
male(david).
male(bruce).
female(lisa).
female(mary).
female(susan).

parent(john,david).
parent(lisa,david).
parent(john,susan).
parent(lisa,susan).
parent(mary,bruce).

husband(jone,lisa).
husband(bruce,susan).

%Rule
mother(X,Y):-
    female(X),
    parent(X,Y).
daughter(X,Y):-
    female(X),
    parent(X,Y).
sibling(X,Y):-
    parent(Z,X),
    parent(X,Y),
    X\=Y.

