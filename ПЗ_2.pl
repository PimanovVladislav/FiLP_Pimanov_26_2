max(X,Y,X):- X>Y,!.
max(_,Y,Y).
min(X,Y,Y):- X>Y,!.
min(X,_,X).
tmax(X,Y,Z,Z):- X=<Z,Y=<Z,!.
tmax(X,Y,_,X):-X>=Y,!.
tmax(_,Y,_,Y).

fact(0,1):-!.
fact(N,X):-N1 is N-1,fact(N1,X1),X is N*X1.
fact1(N,X):-fact2(1,N,1,X).
fact2(N,N,X,X):-!.
fact2(I,N,Y,Z):-I1 is I+1, Y1 is Y*I1, fact2(I1,N,Y1,Z).

fib(1,1):-!.
fib(2,1):-!.
fib(N,X):-N1 is N-1, N2 is N-2, fib(N1,X1),fib(N2,X2), X is X1+X2.

pr(2):-!.
pr(X):-pr1(2,X).
pr1(X,X):-!.
pr1(A,X):- R is X mod A,not(R =0),A1 is A+1, pr1(A1,X).

cep(1,1):-!.
cep(N,X):-cep1(1,N,X).
cep1(N,N,1):-!.
cep1(I,N,Y):- I1 is I+1, R is Y mod 2, R=0, Y1 is Y/2, cep1(I1,N,Y1),!.
cep1(I,N,Y):- I1 is I+1, R is Y mod 2, not(R=0), Y1 is 3*Y+1, cep1(I1,N,Y1).

deg(X,Y):- deg1(X,0,Y).
deg1(0,S,S):-!.
deg1(I,S,Y):- I1 is I mod 10,I2 is I div 10, S1 is S+I1, deg1(I2,S1,Y).

nod(X,Y,1):-pr(X),pr(Y),!.
nod(X,Y,Z):-min(X,Y,R), nod1(R,X,Y,Z).
nod1(1,_,_,1):-!.
nod1(R,X,Y,R):-A is X mod R, A is Y mod R, A=0,!.
nod1(R,X,Y,Z):-R1 is R-1, nod1(R1, X,Y,Z).

npr(X,Y,1):-pr(X),pr(Y),!.
npr(X,Y,Z):-min(X,Y,R), npr1(R,X,Y,Z).
npr1(1,_,_,1):-!.
npr1(R,X,Y,R):-A is X mod R, A is Y mod R,pr(R), A=0,!.
npr1(R,X,Y,Z):-R1 is R-1, npr1(R1, X,Y,Z).

ndel(A,X):-nd(A,A,X).
nd(I,A,I):-pr(I), R is A mod I, R=0, !.
nd(I,A,X):-I1 is I-1, nd(I1, A,X).

fe(X,Y):- Y is X-1,pr(X),!.
fe(X,Y):-X1 is X-1,fe1(X1,X,0,Y).
fe1(0,_,Y,Y):-!.
fe1(I,X,N,Y):- nod(X,I,R),R=1,X1 is I-1, Y1 is N+1, fe1(X1,X,Y1,Y),!.
fe1(I,X,N,Y):- nod(X,I,R),not(R=1),X1 is I-1, fe1(X1,X,N,Y).
