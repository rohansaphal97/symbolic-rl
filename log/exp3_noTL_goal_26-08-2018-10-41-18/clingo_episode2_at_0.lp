1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((2, 6)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((10, 6)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).

wall((14, 6)).

wall((14, 5)).

wall((12, 5)).

wall((14, 4)).

wall((12, 4)).

wall((14, 3)).

wall((12, 3)).

wall((14, 2)).

wall((12, 2)).

wall((13, 0)).
%START
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), action(up, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).

%END

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).
%AAA
state_at((1, 7), 0).
%BBB
%CCC
time(0..250).
%DDD
%ANSWER SETS

%state_at((1,7),0)
%state_at((13,1),1)
%action(up,0)
%state_at((14,1),1)
%state_at((14,1),2)
%state_at((15,1),1)
%state_at((15,1),2)
%state_at((12,3),1)
%state_at((14,3),1)
%state_at((15,3),1)
%state_at((15,3),2)
%state_at((12,4),1)
%state_at((14,4),1)
%state_at((12,5),1)
%state_at((14,5),1)
%state_at((12,6),1)
%state_at((14,6),1)
%state_at((1,7),1)
%state_at((2,7),1)
%state_at((2,7),2)
%state_at((3,7),1)
%state_at((3,7),2)
%state_at((5,7),1)
%state_at((7,7),1)
%state_at((8,7),1)
%state_at((8,7),2)
%state_at((9,7),1)
%state_at((9,7),2)
%state_at((10,7),1)
%state_at((10,7),2)
%state_at((11,7),1)
%state_at((11,7),2)
%state_at((12,7),1)
%state_at((12,7),2)
%state_at((14,7),1)
%state_at((0,8),1)
%state_at((0,8),2)
%state_at((14,8),1)
%state_at((15,8),2)
%action(right,1)
%state_at((15,7),2)
%state_at((13,7),2)
%state_at((6,7),2)
%state_at((4,7),2)
%state_at((15,6),2)
%state_at((13,6),2)
%state_at((15,5),2)
%state_at((13,5),2)
%state_at((15,4),2)
%state_at((13,4),2)
%state_at((16,3),2)
%state_at((13,3),2)
%state_at((16,1),2)
