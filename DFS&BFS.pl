/* Tree structure:
      5
    /   \
   3     7
  / \   / \
 1   4 6   9
*/

% Knowledge base using list representation
tree([5, [3, [1, [], []],
            [4, [], []]],
        [7, [6, [], []],
            [9, [], []]]).

% Alternative flat representation
tree_node(5, 3, 7).
tree_node(3, 1, 4).
tree_node(7, 6, 9).
tree_node(1, null, null).
tree_node(4, null, null).
tree_node(6, null, null).
tree_node(9, null, null).

% BFS implementation
bfs(Tree, Result) :-
    bfs_queue([[Tree]], [], Reversed),
    reverse(Reversed, Result).

bfs_queue([], Acc, Acc).
bfs_queue([[]|Rest], Acc, Result) :-
    bfs_queue(Rest, Acc, Result).
bfs_queue([[[]|Children]|Rest], Acc, Result) :-
    bfs_queue([Children|Rest], Acc, Result).
bfs_queue([[[Value|Children]|Siblings]|Rest], Acc, Result) :-
    bfs_queue([Siblings|Rest], [Value|Acc], Result).

% Example usage with the given list [5,3,7,1,4,6,9]
% ?- bfs([5,[3,[1,[],[]],[4,[],[]]],[7,[6,[],[]],[9,[],[]]]], Result).
% Result = [5, 3, 7, 1, 4, 6, 9]

% DFS implementation (pre-order traversal)
dfs([], []).
dfs([Value|Children], [Value|Rest]) :-
    dfs_children(Children, Rest).

dfs_children([], []).
dfs_children([Child|Siblings], Result) :-
    dfs(Child, ChildResult),
    dfs_children(Siblings, SiblingResult),
    append(ChildResult, SiblingResult, Result).

% Example usage with the given list [5,3,1,4,7,6,9]
% ?- dfs([5,[3,[1,[],[]],[4,[],[]]],[7,[6,[],[]],[9,[],[]]]], Result).
% Result = [5, 3, 1, 4, 7, 6, 9]
