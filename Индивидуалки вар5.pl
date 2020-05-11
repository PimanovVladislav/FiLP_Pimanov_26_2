id1(Res):-findNum(2,2,0,0,Res).
findNum(_,A,_,Res,Res):-A>100000,!.
findNum(0,A,Sum,B,Res):-A1 is A+1, Sum \=A,
findNum(A1,A1,0,B,Res),!.
findNum(0,Sum,Sum,B,Res):-A1 is Sum+1,
B1 is Sum+B,findNum(A1,A1,0,B1,Res),write(Sum),write("|"),!.
findNum(S,A,Sum,B,Res):-S\=0,S1 is S mod 10,
Sum1 is S1*S1*S1*S1*S1,Sum2 is Sum+Sum1,
S2 is S div 10,findNum(S2,A,Sum2, B,Res).


id2:-read(N), read_list(A,N), booble(A,[], [],B, 0), write_list(B).
booble([],[],B,B,0):-!.
booble([],[X], L, B, 1):- append(L,[X], L1), booble(L1,[],[],B,0),!.
booble([],[X], L, B, Flag):- append(L,[X], L1),booble([],[],L1,B,Flag),!.
booble([X|Y],[], L, B, Flag):- booble(Y,[X],L,B,Flag),!.
booble([X|Y],[I],L,B,_):- X < I, Flag1 is 1, append(L,[X],L1),booble(Y,[I],L1,B,Flag1).
booble([X|Y],[I],L,B,Flag):- X > I, append(L,[I],L1),booble(Y,[X],L1,B,Flag).
read_list(A,N):-rl([],A,0,N).
rl(A,A,N,N):-!.
rl(B,A,I,N):-I1 is I+1,read(X), append(B,[X],B1), rl(B1,A,I1,N).
write_list([X]):-write(X),!.
write_list([X|Y]):-write(X),write_list(Y).





in_list([El|_],El).
in_list([_|T],El):-in_list(T,El).


id4:- List=[_],
(
  (
    (   in_list(List,[vitya]); in_list(List,[kolya])),

    (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])),

    (
     (  (   in_list(List,[vitya]); in_list(List,[kolya])),
        (   in_list(List,[vitya]); in_list(List,[jura])));

     (  (   in_list(List,[andrew]); in_list(List,[dima]);in_list(List,[jura])),
        (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])))),

    (
     (  (   in_list(List,[vitya]); in_list(List,[kolya])),
        (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])));
     (  (   in_list(List,[andrew]); in_list(List,[dima]);in_list(List,[jura])),
        (   in_list(List,[vitya]); in_list(List,[jura])))));


   (
    (   in_list(List,[andrew]); in_list(List,[dima]);in_list(List,[jura])),

    (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])),

    (
     (  (   in_list(List,[vitya]); in_list(List,[kolya])),
        (   in_list(List,[vitya]); in_list(List,[jura])));

     (  (   in_list(List,[andrew]); in_list(List,[dima]);in_list(List,[jura])),
        (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])))),

    (
     (  (   in_list(List,[vitya]); in_list(List,[kolya])),
        (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])));
     (  (   in_list(List,[andrew]); in_list(List,[dima]);in_list(List,[jura])),
        (   in_list(List,[vitya]); in_list(List,[jura])))));


  (
    (   in_list(List,[vitya]); in_list(List,[kolya])),

    (   in_list(List,[vitya]); in_list(List,[jura])),

    (
     (  (   in_list(List,[vitya]); in_list(List,[kolya])),
        (   in_list(List,[vitya]); in_list(List,[jura])));

     (  (   in_list(List,[andrew]); in_list(List,[dima]);in_list(List,[jura])),
        (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])))),

    (
     (  (   in_list(List,[vitya]); in_list(List,[kolya])),
        (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])));
     (  (   in_list(List,[andrew]); in_list(List,[dima]);in_list(List,[jura])),
        (   in_list(List,[vitya]); in_list(List,[jura])))));





  (
    (   in_list(List,[vitya]); in_list(List,[kolya])),

    (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])),

    (
     (  (   in_list(List,[vitya]); in_list(List,[kolya])),
        (   in_list(List,[vitya]); in_list(List,[jura])));

     (  (   in_list(List,[andrew]); in_list(List,[dima]);in_list(List,[jura])),
        (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])))));





  (
    (   in_list(List,[vitya]); in_list(List,[kolya])),

    (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])),

    (
     (  (   in_list(List,[vitya]); in_list(List,[kolya])),
        (   in_list(List,[kolya]); in_list(List,[andrew]);in_list(List,[dima])));
     (  (   in_list(List,[andrew]); in_list(List,[dima]);in_list(List,[jura])),
        (   in_list(List,[vitya]); in_list(List,[jura])))))),



 write_list(List),nl.


id5:- read(N),alphabet=[a,b,c,d,e,f],tell('combinatoins.txt'),comb(alphabet,list,[], N-14),told.

b_a_r([],Perm1):-write_str(Perm1),nl,!,fail.
b_a_r(A,Perm):-in_list_exlude(A,El,A1), b_a_r(A1,[El|Perm]).

built_all_razm:-
    read_str(A,_), b_a_r(A,[]).
