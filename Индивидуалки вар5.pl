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


all_perestanovki(Stream,A):-perestanovka(A,P),write_str(Stream,P),fail.

    all_perestanovki(A,P):-perestanovka(A,P),fail.

perestanovka([],[]).
perestanovka(List,[H|Perm]):-delete1(H,List,Rest),perestanovka(Rest,Perm).

delete1(X,[X|T],T).
delete1(X,[H|T],[H|NT]):-delete1(X,T,NT).



id3:-read_str_str(A),otbor(A,[],-1,B,_),write_list_str(B),tell('FILE_IZ3.txt'),write_list_str(B),told.

read_str_str(A):-read_str_file(B,Flag),read_str_str(A,[B],Flag).
read_str_str(A,A,126):-!.
read_str_str(A,Temp_list,10):-read_str_file(B,Flag),append(Temp_list,[B],T_L),
    read_str_str(A,T_L,Flag).

write_list_str([]):-!.
write_list_str([H|T]):-write_str(H),nl,write_list_str(T).

read_str_file(A,Flag):-get0(X),r_str(X,A,[],Flag).
r_str(10,A,A,10):-!.
r_str(126,A,A,126):-!.
r_str(X,A,B,Flag):-append(B,[X],B1), get0(X1), r_str(X1,A,B1,Flag).

leingth([],N,N):-!.
leingth([_|T],N,M):- N1 is N+1, leingth(T,N1,M).

otbor([H],[],-1,_,_):-!.
otbor([H],B,M,B,M):-!.
otbor([H1,H2|T],B,M,BB,MM):-leingth(H1,0,N1),leingth(H2,0,N2), (N1 = N2 -> diffsymb(H1,H2,0,M1),
                  (M1>M -> append([],[H1],B1),append(B1,[H2],B2), (otbor([H1|T],B2,M1,BB,MM),(otbor([H2|T],B2,M1,BB,MM)));
                  (M1 = M->append(B,[H2],B1),(otbor([H1|T],B1,M1,BB,MM),(otbor([H2|T],B1,M1,BB,MM)));
                                           (   otbor([H1|T],B,M,BB,MM),(otbor([H2|T],B,M,BB,MM)))));
                                           (   otbor([H1|T],B,M,BB,MM),( otbor([H2|T],B,M,BB,MM)))).


diffsymb([],[],M,M):-!.
diffsymb([H1|T1],[H2|T2],M,N):- (H1 \= H2-> M1 is M+1, diffsymb(T1,T2,M1,N); diffsymb(T1,T2,M,N)).


% otbor([H1,H2|T],B,M,BB,MM):-leingth(H1,0,N1),leingth(H2,0,N2), (N1 = N2
% -> diffsymb(H1,H2,0,M1),
%                                  (M1>M ->
%                                  append([],[H1],B1),append(B1,[H2],B2),otbor([H2|T],B2,M1,BB,MM);
%
%                                  (M1 =
%                                  M->append(B,[H2],B1),otbor([H2|T],B1,M1,BB,MM);
%
%                                                      otbor([H2|T],B,M,BB,MM)));
%
%                                                     otbor([H2|T],B,M,BB,MM)).
