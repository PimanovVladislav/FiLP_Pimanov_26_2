
%ПЗ_4
% ________________________________________________________________________

pr1:- read(N),read_list(A,N),sumlist(A,S),write(S).
read_list(A,N):-rl([],A,0,N).
rl(A,A,N,N):-!.
rl(B,A,I,N):-I1 is I+1,read(X), append(B,[X],B1), rl(B1,A,I1,N).
sumlist([X],X):-!.
sumlist([X|Y], S):- S is S1+X, sumlist(Y, S1).
pr2:- read(N),read_list(A,N),read(Num),symbol(A,Num,B),write(B).
symbol([X|_],0,X):-!.
symbol([_|Y], Num, B):- Num1 is Num-1, symbol(Y,Num1, B).
pr3:- read(N),read_list([X|Y],N),findmin([X|Y],X,S),write(S).
min(X,Y,Y):- X>Y,!.
min(X,_,X).
findmin([],Min,Min):-!.
findmin([X|Y], B, Min):- min(X,B,B1), findmin(Y,B1,Min).
pr4:- read(N),read_list(A,N),read(Elem),find_(A,Elem).
find_([X|_],X):-!.
find_([_|Y],Elem):-find_(Y,Elem).
pr5:- read(N),read_list(A,N),read(Elem),findNum(A,Elem,0,Num), write(Num).
findNum([X|_],X,Num, Num):-!.
findNum([_|Y],Elem, S, Num):-S1 is S+1, findNum(Y,Elem,S1,Num).
pr6:- read(N),read_list(A,N),rotate(A,[],B),write_list(B).
write_list([X]):-write(X),!.
write_list([X|Y]):-write(X),write_list(Y).
rotate([], B,B):-!.
rotate([X|Y], I,B):- append([X], I, B1), rotate(Y, B1, B).

%________________________________________________________________________
% Лекция 3
%________________________________________________________________________


append1([],X,X).
append1([H|T],X,[H|Z]):-append1(T,X,Z).
read_word(A):-get0(X),r_w(X,A,[]).
r_w(32,A,A):-!.
r_w(X,A, B):-append(B,[X],B1),get0(X1),r_w(X1,A,B1).
read_str(A,N):-get0(X),r_str(X,A,[],N,0).
r_str(10,A,A,N,N):-!.
r_str(X,A,B,N,I):-I1 is I+1, append(B,[X],B1), get0(X1), r_str(X1,A,B1,N,I1).

pr_lec3_1:-read_str(A,N), write("vsego "), write(N),nl, write_list(A).

%________________________________________________________________________
%ПЗ_5
%________________________________________________________________________


pr5_1:-read_str(A,N),write_str(A),write(','), write_str(A),write(','), write_str(A),nl, write(N).
write_str([]):-!.
write_str([X|Y]):-put(X), write_str(Y).
pr5_2:-read_str(A,_), countV(A, 0, K, 0), write(K).
countV([],I,K, Flag):-K is I+Flag,!.
countV([32|T], I, K, 0):- countV(T, I,K,0),!.
countV([32|T], I, K, 1):-I1 is I+1,  countV(T, I1,K,0),!.
countV([_|T], I, K, _):-countV(T,I,K,1).

pr5_4:- read_str(A,N), print(A,0,N).
print(_,N,N):-!.
print([X|_],T,N):-N=<5,T1 is  T+1, put(X), print([X],T1,N),!.
print([X|Y],T,N):-N>5,T<3, put(X),T1 is T+1, print(Y,T1,N),!.
print([X|Y],T,N):-N>5,T1 is  T+1,T>N-4, put(X), print(Y,T1,N),!.
print([_|Y],T,N):-N>5,T1 is  T+1, print(Y,T1,N).


skip_space([32|T],A1):-skip_space(T,A1),!.
skip_space(A1,A1).
get_word([],[],[]):-!.
get_word(A,Word,A2):-get_word(A,[],Word,A2).
get_word([],Word,Word,[]).
get_word([32|T],Word,Word,T):-!.
get_word([H|T],W,Word,A2):-append(W,[H],W1),get_word(T,W1,Word,A2).
split_space(A,B,K):-split_space(A,[],B,0,K).
split_space([],B,B,K,K):-!.
split_space(A,Words,B,I,K):-skip_space(A,A1),get_word(A1,Word,A2),Word\=[],
  append(Words,[Word],Words_new),I1 is I+1, split_space(A2, Words_new,B,I1,K).

delete_all([],B,B,_):-!.
delete_all([H|T],B,C,X):-H=X,delete_all(T,B,C,X),!.
delete_all([H|T],B,C,X):-append(C,[H],C1),delete_all(T,B,C1,X).

find([H|-],H):-!.
find([_|T],E):-find(T,E).

unique_elements(A,B):-new_list(A,[],B).
new_list([],B,B):-!.
new_list([H|T],C,B):-find(T,H),delete_all([H|T],A1,[],H),append(C,[H],C1),new_list(A1,C1,B),!.
new_list([H|T],C,B):-append(C,[H],C1),new_list(T,C1,B).

count_el(A,E1,Count):-count(A,E1,Count,0).
count([],_,K,K):-!.
count([H|T],H,K,K1):-K2 is K1+1, count(T,H,K,K2),!.
count([_|T],El,K,K1):-count(T,El,K,K1).

count_elements(B,C,Counts):-count_elements(B,C,Counts,[]).
count_elements(_,[],Counts,Counts):-!.
count_elements(B,[H|T], Counts,Temp_Counts):-count_el(B,H,Count),append(Temp_Counts,[Count],Temp_Counts1), count_elements(B,T,Counts,Temp_Counts1).

pr5_3:-read_str(A,_),pr5_3(A,Otvet),write_str(Otvet).
pr5_3(A,Otvet):-split_space(A,B,_), unique_elements(B,C), count_elements(B,C,Counts), max_num(Counts, Max_num),  symbol(C,Max_num,Otvet).
max_num([H|T],Max_num):-m_n(T,1,H,Max,1,Max_num).
m_n([],_, Max,Max, Max_num, Max_num):-!.
m_n([H|T],I,Max_temp,Max,_,Max_num):-H>Max_temp,I1 is I+1, m_n(T,I1,H,Max,I,Max_num),!.
m_n([_|T],I,Max_temp,Max,Max_num_temp,Max_num):-I1 is I+1, m_n(T,I1,Max_temp,Max,Max_num_temp,Max_num),!.

pr5_4:-see('file.txt'),read_str_str(A),write_list_str(A),seen.
read_str_str(A):-read_str_file(B,Flag),read_str_str(A,[B],Flag).
read_str_str(A,A,-1):-!.
read_str_str(A,Temp_list,10):-read_str_file(B,Flag),append(Temp_list,[B],T_L),
    read_str_str(A,T_L,Flag).

write_list_str([]):-!.
write_list_str([H|T]):-write_str(H),nl,write_list_str(T).

read_str_file(A,Flag):-get0(X),r_str(X,A,[],Flag).
r_str(10,A,A,10):-!.
r_str(-1,A,A,-1):-!.
r_str(X,A,B,Flag):-append(B,[X],B1), get0(X1), r_str(X1,A,B1,Flag).

%________________________________________________________________________
% Лекция 5
% _______________________________________________________________________



steal_predicat(A,B):-functor(A,F,N),functor(B,F,N).
%function(a(b,c,d),F,N)
%call(B)
%arg(2,pr(f1.f8,bbb),X)
%name(aaa,X) : 'aaa'==aaa
% dynamic pr/1
%asserta(aa)
%listing(aa)
%
%

lec3_1:-read_str(A,N),name(Term,A),call(dynamic pr/1), asserta(pr(Term)),listing(pr).

built_all_razm_p:-
    read_str(A,_),read(K), b_a_rp(A,K,[]).
in_list([El|_],El).
in_list([_|T],El):-in_list(T,El).
b_a_rp(_,0,Perm1):-write_str(Perm1),nl,!,fail.
b_a_rp(A,N,Perm):- in_list(A,El),N1 is N-1, b_a_rp(A,N1,[El|Perm]).

in_list_exlude([El|T],El,T).
in_list_exlude([H|T],El,[H|T]):- in_list_exlude(T,El,T).

b_a_r([],Perm1):-write_str(Perm1),nl,!,fail.
b_a_r(A,Perm):-in_list_exlude(A,El,A1), b_a_r(A1,[El|Perm]).

built_all_razm:-
    read_str(A,_), b_a_r(A,[]).
% _________________________________________________________________________

all_perestanovki(A):-perestanovka(A,P),(not(words(P))->asserta(words(P)),write_str(P),nl,fail).

perestanovka([],[]).
perestanovka(List,[H|Perm]):-delete1(H,List,Rest),perestanovka(Rest,Perm).

delete1(X,[X|T],T).
delete1(X,[H|T],[H|NT]):-delete1(X,T,NT).







