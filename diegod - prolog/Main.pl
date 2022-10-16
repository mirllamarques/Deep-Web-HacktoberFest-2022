:- include('Menu.pl').
:- include('Play.pl').

main:- 
menu,
read(J),
( J == 0 -> creditos, 
            read(T), 
            play(T, 0, 0, false, 0, 0);
  not(J == 0) -> play(J, 0, 0, false, 0, 0)
).

