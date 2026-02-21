
     ASSIGN (1)                  08 agosto 1995                  ASSIGN (1)



     NOMBRE
          assign - Cambia la letra asignada a una unidad


     SINOPSIS
          assign [/m] [/shadow] /?
          assign [/m] [/shadow] /status
          assign [/m] [/shadow] /u
          assign [/m] [/shadow] [{ ud1[:]=ud2[:] }]


     DESCRIPCIàN
          Assign cambia la unidad  asignada  a una letra. A diferencia
          de Subst esto solo cambia la letra, no la ruta. Por ejemplo:
          Teniendo las rutas  ®C:\FREEDOS¯ y ®B:\TEMP¯,  tras ejecutar
          ®assign B=C¯ y  ®cd C:\¯ la  ruta  ®B:¯  tambi‚n apunta a la
          ruta ®C:\¯; mientras  que  tras   los comando ®subst B: .¯ y
          ®cd C:\¯ la ruta ®B:¯ a£n apunta a ®C:\FREEDOS¯.

          Puesto que este programa no se mantiene tras  terminar no lo
          cargue mediante los comandos ®LOADHIGH¯ o ®LH¯.

     OPCIONES

       /? Muestra un peque¤o texto de ayuda.

       /SHADOW Esta opci¢n impide que la  porci¢n de memoria residente
          sea detectable. Esto implica:
          1) El bloque de memoria que  contiene  la parte residente se
          marca como parte del sistema.
          2) La interrupci¢n que  comprueba  la  instalaci¢n  devuelve
          ®No est  ni se permite instalar¯  en lugar de ®Instalado¯  o
          ®No instalado¯.

          Si la parte residente se  instala  con esta opci¢n, pero las
          siguientes llamadas no usan la opci¢n saltar  un aviso, pero
          de todas maneras se realizar  la acci¢n.

          Esta opci¢n puede abreviarse a /SH.

       /STATUS Mostrar todas las unidades asignadas con el formato:
          ud1: => ud2:
          ud1 es la letra asignada y ud2 es la unidad a la que  apunta
          ud1.

          Si no hay nada asignado no se mostrar  nada.

          Esta opci¢n  impide que se cargue la parte residente, si  no
          hab¡a sido cargada.

          Esta opci¢n puede abreviarse a /S

       /u Desinstalar un Assign previamente instalado.



                                      -1-


     ASSIGN (1)                  08 agosto 1995                  ASSIGN (1)


       ud1[:]=ud2[:] Esto define la  asignaci¢n  de letras y unidades,
          de la forma que ud1 apunte a ud2.  Los dos puntos ®:¯ no son
          obligatorios. No puede haber espacios  entre las letras, las
          unidades, los dos puntos y el igual ®=¯.

          Si la  parte  residente  no estaba  cargada  se  cargar  sin
          avisar.

       /m Mover la parte residente al area de  memoria superior, si se
          puede. Esta opci¢n se ignorar  si ya est  instalada la parte
          residente.

       nada Si se ejecuta el programa sin ning£n par metro se borrar n
          todas las asignaciones: cada letra apuntar  a si misma.

     PROBLEMAS

       o  Puesto que Assign no se matiene residente por si mismo puede
          que falle el cargarlo con ®LOADHIGH¯ o ®LH¯. Si quiere cargar la parte residente en la memoria alta use la opci¢n /m.

       o  Las opciones  /STATUS y /SHADOW  no  son opciones normativas
          por compatibilidad con el Assign original.

       o  El  proceso de  desinstalaci¢n puede  prevenirse  instalando
          otros ®TSR¯ m s  tarde, o  usando un  int‚rprete de comandos
          secundario.  En estos  casos  Assign  no  se  suspende y  se
          mantiene activo  en  memoria. Use ASSIGN sin par metros para
          borrar la lista de letras asignadas.

       o  Algunos  int‚rpretes de  comandos, si ASSIGN  fue  instalado
          desde una copia secundaria de los mismos, evitan  que ASSIGN
          pueda encontrar su copia residente en memoria.

     RELACIONADOS
          Subst, Join

     CONTRIBUYENTES
                                 Steffen Kaiser
                             Mittelstraáe 112/B115
                         53757 Sankt Augustin - Menden
                             Deutschland - Alemania

                    correo-e: Steffen.Kaiser@FH-Rhein-Sieg.DE















                                      -2-

