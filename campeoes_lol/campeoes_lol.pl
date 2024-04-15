/* lol_campeoes.pl - Este programa é um sistema especialista que identifica
 * campeões do jogo League of Legends com base em atributos como localização, 
 * gênero, alcance e tipo de dano.


    inicia com ?- iniciar.     */

% iniciar/0: Inicia o jogo de identificação dos campeões.
iniciar :- hipotese(Campeao),
      write('Eu acho que o campeão é: '),
      write(Campeao),
      nl,
      undo.


% hipotese/1: Testa as hipóteses dos campeões baseado nas regras definidas.
hipotese(ahri) :- ahri, !.

hipotese(akali) :- akali, !.
hipotese(ashe) :- ashe, !.
hipotese(darius) :- darius, !.
hipotese(ezreal) :- ezreal, !.
hipotese(garen) :- garen, !.
hipotese(lux) :- lux, !.
hipotese(miss_fortune) :- miss_fortune, !.
hipotese(soraka) :- soraka, !.
hipotese(yasuo) :- yasuo, !.
hipotese(desconhecido). /* sem diagnóstico */

/* Regras de identificação dos campeões */
ahri :- verificar(localizacao(ionia)),
        verificar(genero(feminino)),
        verificar(alcance(ranged)),
        verificar(tipo_dano(ap)).

akali :- verificar(localizacao(ionia)),
         verificar(genero(feminino)),
         verificar(alcance(melee)),
         verificar(tipo_dano(ap)).

ashe :- verificar(localizacao(freljord)),
        verificar(genero(feminino)),
        verificar(alcance(ranged)),
        verificar(tipo_dano(ad)).

darius :- verificar(localizacao(noxus)),
          verificar(genero(masculino)),
          verificar(alcance(melee)),
          verificar(tipo_dano(ad)).

ezreal :- verificar(localizacao(piltover)),
          verificar(genero(masculino)),
          verificar(alcance(ranged)),
          verificar(tipo_dano(ad)).

garen :- verificar(localizacao(demacia)),
         verificar(genero(masculino)),
         verificar(alcance(melee)),
         verificar(tipo_dano(ad)).

lux :- verificar(localizacao(demacia)),
       verificar(genero(feminino)),
       verificar(alcance(ranged)),
       verificar(tipo_dano(ap)).

miss_fortune :- verificar(localizacao(bilgewater)),
                 verificar(genero(feminino)),
                 verificar(alcance(ranged)),
                 verificar(tipo_dano(ad)).

soraka :- verificar(localizacao(celestial)),
          verificar(genero(feminino)),
          verificar(alcance(ranged)),
          verificar(tipo_dano(ap)).

yasuo :- verificar(localizacao(ionia)),
         verificar(genero(masculino)),
         verificar(alcance(melee)),
         verificar(tipo_dano(ad)).

/* Como fazer perguntas */
perguntar(Questao) :-
    write('O campeão tem o seguinte atributo: '),
    write(Questao),
    write(' (s|n) ? '),
    read(Resposta),
    nl,
    ( (Resposta == sim ; Resposta == s)
      ->
       assert(yes(Questao)) ;
       assert(no(Questao)), fail).

:- dynamic yes/1,no/1.

/* Como verificar algo */
verificar(S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
     perguntar(S))).

/* Desfaz todas as afirmações sim / não */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.


/* hipóteses a serem testadas */
hipotese(ahri) :- ahri, !.
hipotese(akali) :- akali, !.
hipotese(ashe) :- ashe, !.
hipotese(darius) :- darius, !.
hipotese(ezreal) :- ezreal, !.
hipotese(garen) :- garen, !.
hipotese(lux) :- lux, !.
hipotese(miss_fortune) :- miss_fortune, !.
hipotese(soraka) :- soraka, !.
hipotese(yasuo) :- yasuo, !.
hipotese(desconhecido). /* sem diagnóstico */

/* Regras de identificação dos campeões */
ahri :- verificar(localizacao(ionia)),
        verificar(genero(feminino)),
        verificar(alcance(ranged)),
        verificar(tipo_dano(ap)).

akali :- verificar(localizacao(ionia)),
         verificar(genero(feminino)),
         verificar(alcance(melee)),
         verificar(tipo_dano(ap)).

ashe :- verificar(localizacao(freljord)),
        verificar(genero(feminino)),
        verificar(alcance(ranged)),
        verificar(tipo_dano(ad)).

darius :- verificar(localizacao(noxus)),
          verificar(genero(masculino)),
          verificar(alcance(melee)),
          verificar(tipo_dano(ad)).

ezreal :- verificar(localizacao(piltover)),
          verificar(genero(masculino)),
          verificar(alcance(ranged)),
          verificar(tipo_dano(ad)).

garen :- verificar(localizacao(demacia)),
         verificar(genero(masculino)),
         verificar(alcance(melee)),
         verificar(tipo_dano(ad)).

lux :- verificar(localizacao(demacia)),
       verificar(genero(feminino)),
       verificar(alcance(ranged)),
       verificar(tipo_dano(ap)).

miss_fortune :- verificar(localizacao(bilgewater)),
                 verificar(genero(feminino)),
                 verificar(alcance(ranged)),
                 verificar(tipo_dano(ad)).

soraka :- verificar(localizacao(celestial)),
          verificar(genero(feminino)),
          verificar(alcance(ranged)),
          verificar(tipo_dano(ap)).

yasuo :- verificar(localizacao(ionia)),
         verificar(genero(masculino)),
         verificar(alcance(melee)),
         verificar(tipo_dano(ad)).

/* Como fazer perguntas */
perguntar(Questao) :-
    write('O campeão tem o seguinte atributo: '),
    write(Questao),
    write(' (s|n) ? '),
    read(Resposta),
    nl,
    ( (Resposta == sim ; Resposta == s)
      ->
       assert(yes(Questao)) ;
       assert(no(Questao)), fail).

:- dynamic yes/1,no/1.

/* Como verificar algo */
verificar(S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
     perguntar(S))).

/* Desfaz todas as afirmações sim / não */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.