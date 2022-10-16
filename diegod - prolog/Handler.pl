:- include('Play.pl').


handler(P, X):- read(J),
play(J, P, X).
