1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 6)).

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).

wall((5, 8)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).
%AAA
state_at((7, 7), 58).
%BBB
%CCC
time(58..250).
%DDD
%ANSWER SETS

%state_at((7,7),58)
%state_at((8,7),59)
%action(right,58)
%action(up,59)
%state_at((8,6),60)
%action(up,60)
%state_at((8,5),61)
%action(up,61)
%state_at((8,4),62)
%action(up,62)
%state_at((8,3),63)
%action(up,63)
%state_at((8,2),64)
%action(up,64)
%state_at((8,1),65)
%action(right,65)
%state_at((9,1),66)
%action(right,66)
%state_at((10,1),67)
%action(right,67)
%state_at((11,1),68)
%action(right,68)
%state_at((12,1),69)
%action(right,69)
%state_at((13,1),70)
%action(right,70)
%state_at((14,1),71)
%action(right,71)
%state_at((15,1),72)
%action(right,72)
%state_at((16,1),73)
