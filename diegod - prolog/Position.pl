position(Rodada, L):-  
    ( Rodada < 4 -> L = 1;
     Rodada > 5 -> random(0, 5, L);
     Rodada =< 5 -> random(0, 1, L)
    ).