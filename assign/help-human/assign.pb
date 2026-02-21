
     ASSIGN (1)                  08 August 1995                  ASSIGN (1)



     NOME
          assign - Atribui uma letra de drive para um drive diferente


     SINOPSE
          assign [/m] [/shadow] /?
          assign [/m] [/shadow] /status
          assign [/m] [/shadow] /u
          assign [/m] [/shadow] [{ dr1[:]=dr2[:] }]


     DESCRIÄ«O

          Assign mapeia  uma letra  de drive para um  drive diferente,
          Este mapeamento tem efeito somente no na letra do drive, mas
          n∆o no caminho, o que faz Assign diferir de Subst, e.g.:
          Com os caminhos de  trabalho atuais "C:\FREEDOS" e "B:\TEMP"
          ap¢s os  comandos "assign  B=C" e "cd  C:\", o  caminho "B:"
          tambÇm aponta para o diret¢rio  "C:\".  Ao passo que ap¢s os
          comandos  "subst B:  ."  e  "cd C:\",  o caminho  "B:" ainda
          aponta para "C:\FREEDOS".

          Dado que  este programa n∆o  Ç TSR, n∆o o  carregue mediante
          "LOADHIGH" ou o comando "LH".

     OPÄÂES

       /? Exibe uma pequena tela de ajuda.

       /SHADOW  Esta  opá∆o  esconde  a porá∆o  residente  de  Assign,
          evitando ser detectada facilmente. Isto inclui:
          1) O bloco de mem¢ria  contendo a porá∆o residente Ç marcada
          como parte do sistema.
          2)  A interrupá∆o  de  checagem da  instalaá∆o retorna  "Not
          installed, but not allowed to install" em vez de "Installed"
          ou "Not installed".

          Se a  porá∆o residente  Ç instalada com  esta opá∆o,  mas as
          invocaá‰es  seguintes  s∆o  realizadas sem  esta  opá∆o,  um
          alerta surge, porÇm a aá∆o Ç realizada.

          A opá∆o pode ser abreviada para /SH.

       /STATUS Exibe todas as letras de drives no formato:
          dr1: => dr2:
          onde dr1 Ç a letra atribu°da ao drive e dr2 Ç o drive para o
          qual dr1 aponta.

          Se n∆o existir nenhuma  atribuiá∆o, ent∆o nenhuma sa°da ser†
          exibida.

          Esta opá∆o evita o carregamento  da porá∆o residente, se ela
          n∆o tiver sido instalada antes.
          
          A opá∆o pode ser abreviada para /S.

       /u Desinstala um Assign instalado anteriormente.


                                      -1-


     ASSIGN (1)                  08 August 1995                  ASSIGN (1)


       dr1[:]=dr2[:] Define  uma letra  de atribuiá∆o de  driver, onde
          dr1  dever†  apontar  para   dr2.  Os  dois-pontos  ":"  s∆o
          opcionais.  N∆o s∆o  permitidos espaáos  em branco  entre as
          letras de driver, os dois-pontos e o sinal de igual "=".

          Se  a porá∆o  residente ainda  n∆o foi  carregada, ela  ser†
          carregada sem notificaá∆o.

       /m Move  a porá∆o residente  para a  †rea do bloco  superior de
          mem¢ria (UMB), se poss°vel.
          Esta  opá∆o Ç  ignorada quando  a porá∆o  residente j†  est†
          instalada.

       nenhuma  opá∆o Se  n∆o h†  /STATUS  nem /u  nem uma  atribuiá∆o
          especificada  na  linha  de comando,  todas  as  atribuiá‰es
          existentes s∆o destru°das, tal que todas as letras apontar∆o
          para si mesmas em resultado.

     PROBLEMAS CONHECIDOS

       o  Como  Assign n∆o  Ç ele  mesmo TSR,  um carregamento  com os
          comandos  "LOADHIGH"  ou  "LH"  pode falhar.  Se  vocà  quer
          carregar  a  porá∆o  residente  na  parte  alta,  vocà  deve
          especificar a opá∆o /m.

       o  As opá‰es /STATUS e /SHADOW n∆o seguem o padr∆o de opá∆o por
          causa da compatibilidade com o Assign original.

       o  Programas residentes instalados posteriormente ou um segundo
          processador de  comandos (shell) majoritariamente  impedem o
          processo  de  desinstalaá∆o.   Neste   caso,  Assign  n∆o  Ç
          suspenso, mas  permanece ativo  na mem¢ria. Use  ASSIGN, sem
          opá‰es, para limpar a tabela de atribuiá‰es.

       o  Algumas  shells  impedem   que  ASSIGN  encontre  sua  c¢pia
          residente na mem¢ria, se ASSIGN  Ç instalado a partir de uma
          c¢pia secund†ria da shell.

     VEJA TAMBêM
          Subst, Join

     CONTRIBUIDORES
                                 Steffen Kaiser
                             Mittelstra†e 112/B115
                         53757 Sankt Augustin - Menden
                             Deutschland - Germany

                    e-mail: Steffen.Kaiser@FH-Rhein-Sieg.DE












                                      -2-

