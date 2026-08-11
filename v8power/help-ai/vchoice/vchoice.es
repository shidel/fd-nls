# Language: Spanish
# File ending: es
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vchoice [options]

Elige una opci¢n.

Devuelve un errorlevel de la opci¢n seleccionada seg£n su n£mero de
entrada. No la letra/n£mero de la opci¢n. Por ejemplo, si se elige el
segundo elemento, devolver  un errorlevel de 2. Sin importar cualquier
prefijo (Como C, 1, R, etc). Adem s, recomiendo usar auto para
cualquier conjunto de opciones que tenga un prefijo de letra o n£mero.

    [none]      Ejecuta usando todos los ajustes predeterminados.
    /A n        Establece el atributo de texto a n para el elemento
                seleccionado.
    /B color    Ajusta el color de fondo a color (o valor) para el
                elemento seleccionado.
    /F color    Ajusta el color de texto a color (o valor) para el
                elemento seleccionado.
    /D n        Preselecciona el n£mero de elemento n por defecto.
    type        Tipo de selecci¢n directa por teclado.
                    off     Selecciona solo con las flechas.
                    auto    Detecta caracteres de salto directo. (Defecto)
                    alpha   Salta a las selecciones usando A-Z.
                    digit   Salta a las selecciones usando 1-9 (+0).
    /Q          Consulta el resultado. Al hacer la elecci¢n, su texto
                se enviar  a STDOUT.
    /T seconds  Retraso en segundos antes de que el elemento por
                defecto se seleccione autom ticamente (0-3600).
                Incluso si el usuario navega a otro elemento, el
                original por defecto se elegir  al acabar el tiempo.
    /P n        Usa modo de sondeo y preselecciona el elemento n como
                opci¢n actual. Nota: cualquier cambio de selecci¢n
                saldr  de vchoice y devolver  100+ el n£mero actual.
    /K n        Usa n en lugar de car cter de marco para l¡mites.
    CTRL-C      Si se especifica y se pulsa Control-C, saldr  con
                un errorlevel de 200.

    tba         (A£n en desarrollo, se anunciar  m s adelante)
