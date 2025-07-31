% Facts representing edges (undirected graph)
edge(1, 2).
edge(1, 4).
edge(2, 3).
edge(2, 5).
edge(3, 6).
edge(4, 5).
edge(5, 6).

% Make edges bidirectional
connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(Y, X).

% Base case: Path from X to X is just [X]
path(X, X, [X]).

% Recursive case: Find path from X to Y
path(X, Y, [X|Path]) :-
    connected(X, Z),
    Z \== Y,
    path(Z, Y, Path).

% Improved version that avoids cycles
path(X, Y, Path) :-
    path(X, Y, [X], Path).

path(X, X, Visited, [X]).
path(X, Y, Visited, [X|Path]) :-
    connected(X, Z),
    \+ member(Z, Visited),
    path(Z, Y, [Z|Visited], Path).

% Check if two nodes are connected
connected_nodes(X, Y) :-
    path(X, Y, _).

% Find all reachable nodes from a starting node
reachable(X, Y) :-
    path(X, Y, _).

% Find the shortest path (using aggregate)
shortest_path(X, Y, ShortestPath) :-
    aggregate(min(L, P), (path(X, Y, P), length(P, L)), min(_, ShortestPath)).
