:- include('Events.pl').
:- include('Bodies.pl').
:- include('Pontuacao.pl').

% 0 caixa
% 1 nada
% 2 policia
% 3 poça -> pode ou não ser mortal
% 4 abelhas

%Para a poça matar ele afogado será gerado um número aleatório de 1 até 100
%Se esse número for divisível por 3 ele pode morrer afogado
pocaMortal(X):- 
    random(1,100,Random), 
    Mod is Random mod 3, 
    X = (Mod == 0).


event(0,CondicaoVida,CheckBonus,Multiplicador,false, Pontuacao, Pontuacao):- animation(Multiplicador),
    HaPontos = (Pontuacao >= 10),
    (
    not(HaPontos) -> boxNoPoints,
                     foundBoxNoPoints,
                     CondicaoVida = true, 
                     CheckBonus = true;

    Multiplicador == 1 -> box, 
                           write("Ao abrir esta caixa você perderá a goiaba dourada"), 
                           nl, 
                           nl,
                           foundBox, 
                           CondicaoVida = true, 
                           CheckBonus = true;

    Multiplicador == 2 -> box, 
                          write("Ao abrir esta caixa você perderá a cinquentinha"), 
                          nl, 
                          nl,
                          foundBox, 
                          CondicaoVida = true, 
                          CheckBonus = true;

    Multiplicador == 3 -> box, 
                          write("Ao abrir esta caixa você perderá a calopsita gigante"), 
                          nl, 
                          nl,
                          foundBox, 
                          CondicaoVida = true, 
                          CheckBonus = true;

    Multiplicador == 0 -> box, 
                          foundBox, 
                          CondicaoVida = true, 
                          CheckBonus = true).


event(3,CondicaoVida,CheckBonus,Multiplicador,QuaseMorreu, Pontuacao, Pontuacao):- animation(Multiplicador),
    pocaMortal(X),
    (Multiplicador == 1 -> pocaFunda, 
                           pocaMtFunda, 
                           CondicaoVida = true, 
                           CheckBonus = false, 
                           QuaseMorreu = true, !;
    
    Multiplicador == 2 -> passaPoca, 
                          cinquentinha, 
                          CondicaoVida = true, 
                          CheckBonus = false,
                          QuaseMorreu = true, !;

    Multiplicador == 3 -> passaPoca, 
                          calopisitaGigante, 
                          CondicaoVida = true, 
                          CheckBonus = false,
                          QuaseMorreu = true, !;

    X -> derrotaPoca, 
         pocaDefeat, 
         CondicaoVida = false, 
         CheckBonus = false,
         QuaseMorreu = true;

    not(X) -> pisaPoca, 
              pocaDoCao, 
              CondicaoVida = true, 
              CheckBonus = false,
              QuaseMorreu = true).

event(2,CondicaoVida,CheckBonus,Multiplicador,QuaseMorreu, Pontuacao, NovaPontuacao):- animation(Multiplicador),
    TemPontos = (Pontuacao >= 10),

    (Multiplicador == 1 -> baculejoGoiabaDourada,
                           baculejoGoiaba,
                           QuaseMorreu = true,
                           CondicaoVida = true,
                           NovaPontuacao is Pontuacao;

     Multiplicador == 2 -> baculejoMotoquinha,
                           baculejoMoto,
                           QuaseMorreu = true,
                           CondicaoVida = true,
                           NovaPontuacao is Pontuacao;

     not(TemPontos), not(Multiplicador == 2), not(Multiplicador == 1) -> derrotaBaculejo,
                                                                         baculejoDefeat,
                                                                         CondicaoVida = false,
                                                                         CheckBonus = false,
                                                                         QuaseMorreu = true,
                                                                         NovaPontuacao = Pontuacao;

     (TemPontos, not(Multiplicador == 2), not(Multiplicador == 1)) -> baculejo, 
                                                                    baculejoSimples,
                                                                    removePontuacao(Pontuacao, PontuacaoPlus),
                                                                    show(PontuacaoPlus),
                                                                    CondicaoVida = true,
                                                                    QuaseMorreu = false,
                                                                    NovaPontuacao is PontuacaoPlus
    ).
    

event(1, CondicaoVida, CheckBonus, Multiplicador, false, Pontuacao, Pontuacao):- %nada aconteceu
    animation(Multiplicador),
    noEvent,
    (Multiplicador == 0 -> none,
                           CondicaoVida = true, 
                           CheckBonus = false;

     Multiplicador == 1 -> noneGoiaba,
                           CondicaoVida = true, 
                           CheckBonus = false;

     Multiplicador == 2 -> noneCinquentinha,
                           CondicaoVida = true, 
                           CheckBonus = false;

     Multiplicador == 3 -> noneCalopsita,
                           CondicaoVida = true, 
                           CheckBonus = false
    ).

event(4,CondicaoVida,CheckBonus,1,QuaseMorreu, Pontuacao, Pontuacao):- 
    ataqueAbeia,
                           ataqueDasAbeia,
                           CondicaoVida = true,
                           CheckBonus = false,
                           QuaseMorreu = true.

event(4,CondicaoVida,CheckBonus,_,QuaseMorreu, _, _):- 
                                derrotaAbeia, 
                                abeiaDefeat, 
                                CondicaoVida = false, 
                                CheckBonus = false,
                                QuaseMorreu = true.
    

eventPower("Goiaba"):- 
    goiaba, 
    goibaDourada.

eventPower("Calopsita"):- 
    calopsita, 
    calopisitaGigante.

eventPower("Motoquinha"):- 
    moto, 
    cinquentinha.


removePontuacao(Pontuacao,Total):- 
    Total is Pontuacao - 10.
    

show(Total):-
    write("Pontuação "),
    write(Total),
    nl, 
    nl.


animation(Multiplicador):-
    (Multiplicador == 2)-> random(1,3,Time),ghostRiderDiegod(Time),sleep(Time);
    random(1,3,Time),walkingDiegod(Time),sleep(Time).