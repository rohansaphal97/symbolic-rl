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
%START
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((4, 7), 15).
%BBB
%CCC
time(15..250).
%DDD
%ANSWER SETS

%state_at((4,7),15)
%state_at((0,6),17)
%action(right,16)
%state_at((0,6),18)
%action(right,17)
%state_at((0,6),19)
%action(right,18)
%state_at((0,6),20)
%action(right,19)
%state_at((0,6),21)
%action(right,20)
%state_at((0,6),22)
%action(right,21)
%state_at((0,6),23)
%action(right,22)
%state_at((0,6),24)
%action(right,23)
%state_at((0,6),25)
%action(right,24)
%state_at((0,6),26)
%action(right,25)
%state_at((0,6),27)
%action(right,26)
%state_at((1,6),17)
%state_at((1,6),18)
%state_at((1,6),19)
%state_at((1,6),20)
%state_at((1,6),21)
%state_at((1,6),22)
%state_at((1,6),23)
%state_at((1,6),24)
%state_at((1,6),25)
%state_at((1,6),26)
%state_at((1,6),27)
%state_at((2,6),17)
%state_at((2,6),18)
%state_at((2,6),19)
%state_at((2,6),20)
%state_at((2,6),21)
%state_at((2,6),22)
%state_at((2,6),23)
%state_at((2,6),24)
%state_at((2,6),25)
%state_at((2,6),26)
%state_at((2,6),27)
%state_at((4,6),17)
%state_at((4,6),18)
%state_at((4,6),19)
%state_at((4,6),20)
%state_at((4,6),21)
%state_at((4,6),22)
%state_at((4,6),23)
%state_at((4,6),24)
%state_at((4,6),25)
%state_at((4,6),26)
%state_at((4,6),27)
%state_at((4,6),29)
%state_at((0,8),16)
%state_at((0,8),17)
%state_at((0,8),18)
%state_at((0,8),19)
%state_at((0,8),20)
%state_at((0,8),21)
%state_at((0,8),22)
%state_at((0,8),23)
%state_at((0,8),24)
%state_at((0,8),25)
%state_at((0,8),26)
%state_at((0,8),27)
%state_at((0,8),28)
%state_at((0,8),29)
%state_at((0,8),30)
%state_at((0,8),31)
%state_at((0,8),32)
%state_at((0,8),33)
%state_at((1,8),17)
%state_at((1,8),18)
%state_at((1,8),19)
%state_at((1,8),20)
%state_at((1,8),21)
%state_at((1,8),22)
%state_at((1,8),23)
%state_at((1,8),24)
%state_at((1,8),25)
%state_at((1,8),26)
%state_at((1,8),27)
%state_at((2,8),17)
%state_at((2,8),18)
%state_at((2,8),19)
%state_at((2,8),20)
%state_at((2,8),21)
%state_at((2,8),22)
%state_at((2,8),23)
%state_at((2,8),24)
%state_at((2,8),25)
%state_at((2,8),26)
%state_at((2,8),27)
%state_at((3,8),17)
%state_at((3,8),18)
%state_at((3,8),19)
%state_at((3,8),20)
%state_at((3,8),21)
%state_at((3,8),22)
%state_at((3,8),23)
%state_at((3,8),24)
%state_at((3,8),25)
%state_at((3,8),26)
%state_at((3,8),27)
%state_at((4,8),17)
%state_at((4,8),18)
%state_at((4,8),19)
%state_at((4,8),20)
%state_at((4,8),21)
%state_at((4,8),22)
%state_at((4,8),23)
%state_at((4,8),24)
%state_at((4,8),25)
%state_at((4,8),26)
%state_at((4,8),27)
%state_at((5,8),17)
%state_at((5,8),18)
%state_at((5,8),19)
%state_at((5,8),20)
%state_at((5,8),21)
%state_at((5,8),22)
%state_at((5,8),23)
%state_at((5,8),24)
%state_at((5,8),25)
%state_at((5,8),26)
%state_at((5,8),27)
%state_at((1,7),16)
%action(down,15)
%state_at((1,7),28)
%state_at((1,7),29)
%state_at((1,7),30)
%state_at((1,7),31)
%state_at((1,7),32)
%state_at((1,7),33)
%state_at((2,7),16)
%state_at((2,7),17)
%state_at((2,7),28)
%state_at((2,7),29)
%state_at((2,7),30)
%state_at((2,7),31)
%state_at((2,7),32)
%state_at((2,7),33)
%state_at((3,7),16)
%state_at((3,7),17)
%state_at((3,7),18)
%state_at((3,7),28)
%state_at((3,7),29)
%state_at((3,7),30)
%state_at((3,7),31)
%state_at((3,7),32)
%state_at((3,7),33)
%state_at((5,7),16)
%state_at((5,7),18)
%state_at((5,7),19)
%state_at((5,7),20)
%state_at((5,7),28)
%state_at((5,7),29)
%state_at((5,7),30)
%state_at((5,7),31)
%state_at((5,7),32)
%state_at((5,7),33)
%state_at((4,7),28)
%state_at((4,7),19)
%state_at((4,7),18)
%state_at((4,7),17)
%action(up,32)
%action(up,31)
%action(up,30)
%action(up,29)
%action(up,28)
%action(up,27)
%state_at((4,5),30)
%state_at((4,5),28)
%state_at((2,5),28)
%state_at((1,5),28)
%state_at((0,5),28)
%state_at((6,7),21)
%state_at((6,7),20)
%state_at((6,7),19)
%state_at((6,7),17)
%state_at((0,4),29)
%state_at((1,4),29)
%state_at((2,4),29)
%state_at((4,4),29)
%state_at((4,4),31)
%state_at((7,7),18)
%state_at((7,7),20)
%state_at((7,7),21)
%state_at((7,7),22)
%state_at((4,3),32)
%state_at((4,3),30)
%state_at((2,3),30)
%state_at((1,3),30)
%state_at((0,3),30)
%state_at((8,7),23)
%state_at((8,7),22)
%state_at((8,7),21)
%state_at((8,7),19)
%state_at((0,2),31)
%state_at((1,2),31)
%state_at((2,2),31)
%state_at((4,2),31)
%state_at((4,2),33)
%state_at((9,7),20)
%state_at((9,7),22)
%state_at((9,7),23)
%state_at((9,7),24)
%state_at((4,1),32)
%state_at((2,1),32)
%state_at((1,1),32)
%state_at((0,1),32)
%state_at((10,7),25)
%state_at((10,7),24)
%state_at((10,7),23)
%state_at((10,7),21)
%state_at((0,0),33)
%state_at((1,0),33)
%state_at((2,0),33)
%state_at((4,0),33)
%state_at((11,7),22)
%state_at((11,7),24)
%state_at((11,7),25)
%state_at((11,7),26)
%state_at((12,7),27)
%state_at((12,7),26)
%state_at((12,7),25)
%state_at((12,7),23)
%state_at((12,6),28)
%state_at((13,7),24)
%state_at((13,7),26)
%state_at((13,7),27)
%state_at((13,6),28)
%state_at((12,5),29)
%state_at((14,7),27)
%state_at((14,7),25)
%state_at((14,6),28)
%state_at((12,4),30)
%state_at((13,5),29)
%state_at((15,7),26)
%state_at((13,4),30)
%state_at((12,3),31)
%state_at((14,5),29)
%state_at((16,7),27)
%state_at((16,6),28)
%state_at((14,4),30)
%state_at((12,2),32)
%state_at((13,3),31)
%state_at((13,2),32)
%state_at((12,1),33)
%state_at((14,3),31)
%state_at((16,5),29)
%state_at((16,4),30)
%state_at((14,2),32)
%state_at((13,1),33)
%state_at((14,1),33)
%state_at((16,3),31)
%state_at((16,2),32)
%state_at((16,1),33)
