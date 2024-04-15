# README - Sistema Especialista de Campeões do League of Legends

## Introdução
Este sistema especialista em Prolog foi criado para ajudar a identificar campeões do jogo League of Legends com base em atributos específicos fornecidos pelo usuário. Ele utiliza uma base de conhecimento que inclui informações como localização, gênero, tipo de alcance (melee ou ranged) e tipo principal de dano (AP ou AD).

## Como Usar
Para utilizar o sistema, carregue o arquivo `lol_campeoes.pl` no seu interpretador Prolog e execute o comando:

?- iniciar.

O sistema irá iniciar e fazer uma série de perguntas para identificar o campeão com base nas respostas fornecidas.

## Funcionamento
O sistema faz perguntas ao usuário sobre os atributos do campeão. Com base nas respostas, ele aplica regras de inferência para deduzir qual campeão está sendo descrito.

## Regras de Inferência
O sistema contém regras para cada campeão que verificam os atributos fornecidos pelo usuário. Se as respostas do usuário coincidirem com os atributos de um campeão, o sistema identificará esse campeão. Caso contrário, indicará `desconhecido`.

## Exemplo de Perguntas

O campeão tem o seguinte atributo: localizacao(ionia) (s|n) ? O campeão tem o seguinte atributo: genero(feminino) (s|n) ?