DOMAINS
real_list = real*
PREDICATES
readlist(real_list,integer,real)
read_command
menu
prognoz(integer)
CLAUSES
read_command:-nl,write(">"),readint(C),prognoz(C).
menu:-
write("************************MENU***************************"),nl,
write("Ekstrapolyaciya metodom eksponencial'nogo sglazhivaniya"),nl,
write("1 - Ispolzovat' znachenie n po umolchaniyu(10)"),nl,
write("2 - Vybrat' znachenie n"),nl,
write("3 - Vihod"),
read_command.
prognoz(1):-
N=10,
A=(2/(N+1)),
write("Vvedite iskhodnye znacheniya:"),
nl,
write(">"),readreal(UN1),
write(">"),readreal(UN2),
write(">"),readreal(UN3),
write(">"),readreal(UN4),
write(">"),readreal(UN5),	
write(">"),readreal(UN6),
write(">"),readreal(UN7),
write(">"),readreal(UN8),
write(">"),readreal(UN9),
write(">"),readreal(UN10),
U1=UN1,
U2=A*U1+(1-A)*U1,
U3=A*UN2+(1-A)*U2,
U4=A*UN3+(1-A)*U3,
U5=A*UN4+(1-A)*U4,
U6=A*UN5+(1-A)*U5,
U7=A*UN6+(1-A)*U6,
U8=A*UN7+(1-A)*U7,
U9=A*UN8+(1-A)*U8,
U10=A*UN9+(1-A)*U9,
U11=A*UN10+(1-A)*U10,
write("Prognoz sledueshego znacheniya = ",U11),nl,
write("Chislo N = ",N),nl.

prognoz(2):-
write("Vvedite znachenie N"),nl,
write(">"),
readint(N),
A=2/(N+1),
readlist([_|_],N,A).

readlist([H|T],N,A):-
write("Vvedite iskhodnoe znachenie ili <stop> dlya ostanovki"),nl,
write(">"),
readreal(H),!,
NN=N-1,
U1=H,
U2=U1*A+(1-A)*U1,
U=(H+U2)*A+(1-A)*U2,
readlist(T,NN,A),
write("Prognoz sledueshego znacheniya =",U),nl,
write("Chislo N =",N),!,nl.
readlist([],N,_):-
N<=0,!.








