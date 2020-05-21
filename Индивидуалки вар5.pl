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





id5:-
    Alphabet = [a,b,c,d,e,f],write('Введите длину слов(не менее 18 и не более 20 символов)'),nl,read(N),
    sochet(X, 3, Alphabet), Slovo = [],
    appendfew(X,5,Slovo,Slovo1), delete_list(Alphabet,X,X,[],NewAlpha),

    sochet(Y,1,NewAlpha),
    appendfew(Y,3,Slovo1,Slovo2),delete_list(NewAlpha,Y,Y,[],NewAlphabet),

   (N=18->
   (write_str(Slovo2), open('Combinations.txt',append,Stream),all_perestanovki(Stream,Slovo2),close(Stream));
   (
       sochet(Z,N-18,NewAlphabet),appendfew(Z,1,Slovo2,SlovoRes),write_str(SlovoRes),
open('Combinations.txt',append,Stream),
      all_perestanovki(Stream,SlovoRes),close(Stream) )),fail.



delete_list([],_,_,X,X):-!.
delete_list([Head|Tail],[],IspBukv,Alpha,NewAlpha):-append(Alpha,[Head],Alpha2),delete_list(Tail,IspBukv,IspBukv,Alpha2,NewAlpha).
delete_list([Head|Tail],[Head|T],IspBukv,Alpha,NewAlpha):-delete_list(Tail,T,IspBukv,Alpha,NewAlpha),!.
delete_list([Head|Tail],[_|T],IspBukv,Alpha,NewAlpha):-delete_list([Head|Tail],T,IspBukv,Alpha,NewAlpha).

appendfew(_,0,Slovo,Slovo):-!.
appendfew(X,Num,Slovo,Slovo1):-Num1 is Num-1, append(Slovo,X,Slovo2), appendfew(X,Num1, Slovo2,Slovo1).

make_sochet:- read(N), r_list(A,N), read(Kol), sochet(X, Kol, A), write(X),nl,fail.

sochet([],0,_):-!.
sochet([H|Sub_set],K,[H|Set]):-K1 is K-1,sochet(Sub_set,K1,Set).
sochet(Sub_set,K,[_|Set]):-sochet(Sub_set,K,Set).

in_list_exlude([El|T],El,T).
in_list_exlude([H|T],El,[H|Tail]):-in_list_exlude(T,El,Tail).

write_str(Stream,[]):-nl(Stream),!.
write_str(Stream,[X|Y]):-put(Stream,X), write_str(Stream,Y).

write_str([]):-nl,!.
write_str([X|Y]):-put(X), write_str(Y).

read_str(A,N):-get0(X),r_str(X,A,[],N,0).
r_str(10,A,A,N,N):-!.
r_str(X,A,B,N,I):-I1 is I+1, append(B,[X],B1), get0(X1), r_str(X1,A,B1,N,I1).

r_list(A,N):-r_list(A,N,0,[]).
r_list(A,N,N,A):-!.
r_list(A,N,K,B):-read(X),append(B,[X],B1),K1 is K+1,r_list(A,N,K1,B1).

b_a_r(Stream,[],Perm1):-write_str(Stream,Perm1),!,fail.
b_a_r(Stream,A,Perm):-in_list_exlude(A,El,A1), b_a_r(Stream,A1,[El|Perm]).

all_perestanovki(Stream,A):-perestanovka(A,P),write_str(Stream,P),fail.

    all_perestanovki(A):-perestanovka(A,P),write_str(P),nl,fail.

perestanovka([],[]).
perestanovka(List,[H|Perm]):-delete1(H,List,Rest),perestanovka(Rest,Perm).

delete1(X,[X|T],T).
delete1(X,[H|T],[H|NT]):-delete1(X,T,NT).





