
noEvent :- 
    write("Nada aconteceu!"), 
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

box:- 
    write("Diegod achou uma caixa! Deseja abrir?"), 
    nl, 
    nl, 
    write("Abrir caixa (-10 pontos + Power up)  Jogar dado (ganha pontos)"), 
    nl, 
    nl.

boxNoPoints:-
    write("Diegod achou uma caixa! Mas não possui pontos o suficiente."), 
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.
moto:- 
    write("Diegod ganhou uma 50tinha, pontuação x2 por 5 rodadas."),
    nl, 
    write("Cuidado com os policiais!"), 
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

calopsita:- 
    write("Diegod achou a calopsita gigante, pontuação x3 por 5 rodadas."),
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

goiaba:- 
    write("Diegod achou a goiaba dourada, não perderá pontos ou morrerá!"),
    nl, 
    write("A goiaba dourada só será usada uma vez."),
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

perdeCalopsita:- 
    write("A calopsita gigante defendeu você das abelhas e foi embora."),
    nl, 
    write("Você perdeu a pontuação x3!"), 
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

passaPoca:-
    write("Diegod passou por uma pocinha(pequeninha), cuidado!"),
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

pisaPoca:- 
    write("Diegod pisou numa poça, cuidado!"),
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

pocaFunda:- 
    write("Diegod pisou numa poça funda demais."),
    nl, 
    write("Você gastou a sua goiaba dourada e não morrerá afogado!"),
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

ataqueAbeia:- 
    write("Diegod foi perseguido por abelhas."),
    nl, 
    write("Você gastou a sua goiaba dourada e não será picado!"), 
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

derrotaAbeia:- 
    write("VOCÊ PERDEU!"),
    nl, 
    write("Diegod levou uma picada de abelha!"), 
    nl, 
    nl.

derrotaPoca:- 
    write("VOCÊ PERDEU!"),
    nl, 
    write("Diegod pisou numa poça funda demais e se afogou!"), 
    nl, 
    nl.

baculejo:- 
    write("Diegod levou um baculejo e perdeu 10 pontos."),
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

baculejoGoiabaDourada:-
    write("Diegod levou baculejo e perdeu sua goiaba dourada!"),
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

baculejoMotoquinha:- 
    write("Diegod foi pego pela polícia e perdeu a 50tinha!"),
    nl, 
    write("Você perdeu a pontuação x2!"),
    nl, 
    nl, 
    write("Jogar dado (ganha pontos)"), 
    nl, 
    nl.

derrotaBaculejo:- 
    write("VOCÊ PERDEU!"),
    nl, 
    write("Diegod levou baculejos demais e perdeu todos os pontos!"), 
    nl, 
    nl.