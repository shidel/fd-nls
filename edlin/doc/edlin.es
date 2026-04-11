# Language: Spanish
# File ending: ES
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

EDLIN 2.14

El programa edlin es un peque§o editor de l°neas, escrito para FreeDOS como
un clon funcional del antiguo programa edlin de MS-DOS. Se diferencia del
MS-edlin en que, primero, es software libre y, segundo, la interfaz de
usuario es ligeramente distinta en algunos puntos. El motivo del cambio es
evitar que el usuario tenga que teclear caracteres de control exigidos por
la sintaxis original de MS-edlin.

INVOCACI‡N DE EDLIN

El programa edlin se invoca solo:

  edlin

o con un nombre de archivo que se lee al inicio:

  edlin archivo

COMANDOS INTERNOS DE EDLIN

En las siguientes listas, los corchetes representan elementos opcionales.
El s°mbolo # representa un n£mero de l°nea, que puede ser una serie de
d°gitos, un punto (.) para la l°nea actual, un signo de d¢lar ($) para la
£ltima l°nea del archivo, o un n£mero sumado o restado a otro, de modo que:

  .,.+1p

muestra la l°nea actual y la siguiente.

Un signo de d¢lar en las listas representa una cadena de caracteres. Pueden
ir entre comillas simples o dobles y contener estas secuencias de escape:

  \a - alerta (pitido)
  \b - retroceso
  \e - escape
  \f - salto de p†gina
  \t - tabulaci¢n horizontal
  \v - tabulaci¢n vertical
  \" - comilla doble
  \' - comilla simple
  \. - punto
  \\ - barra invertida
  \xXX (X es d°gito hexa 0-9, a-f) - constante hexadecimal
  \dddd (d es d°gito decimal 0-9) - constante decimal
  \OOO (O es d°gito octal 0-7) - constante octal
  \^C - car†cter de control

El programa edlin admite la siguiente sintaxis:

# - EDITAR UNA SOLA L÷NEA

edlin muestra la l°nea indicada por el n£mero, y la siguiente l°nea que se
introduzca reemplazar† a dicha l°nea en el archivo.

a - A•ADIR (APPEND)

Este comando equivale a $+1i .

[#],[#],#,[#]c - COPIAR UN RANGO DE L÷NEAS

Copia un bloque de l°neas consecutivas a otra ubicaci¢n del b£fer. Los
par†metros son:

  * Primera l°nea a copiar (por defecto = l°nea actual)
  * Èltima l°nea a copiar (por defecto = l°nea actual)
  * L°nea antes de la cual insertar el bloque
  * N£mero de veces a copiar el bloque (por defecto = 1)

Tras copiar, puede usar l (list) para ver la nueva numeraci¢n.

[#][,#]d - ELIMINAR UN BLOQUE DE L÷NEAS

Elimina un bloque de l°neas consecutivas. Los par†metros definen la primera
y £ltima l°nea del bloque.

Si omite el segundo par†metro, solo borra la l°nea del primero. Si omite el
primero, borra desde la l°nea actual hasta la del segundo (incluya la
coma). Si omite ambos, se borra la l°nea actual.

e archivo - GUARDAR Y SALIR

Equivale a:

  w archivo
  q

[#]i - MODO INSERCI‡N

Entra en modo inserci¢n. El par†metro es la l°nea antes de la cual se
insertar† el texto.

Al insertar, se permiten secuencias de escape. Para salir, escriba un punto
(.) en una l°nea vac°a (si necesita una l°nea con solo un punto, use un
car†cter de escape).

Al salir, la l°nea tras el texto insertado pasa a ser la actual, salvo si
se a§adi¢ al final, en cuyo caso la £ltima l°nea ser† la nueva actual.

[#][,#]l - LISTAR L÷NEAS

Muestra l°neas en pantalla. Sin primer par†metro, empieza 11 l°neas antes
de la actual. Sin segundo par†metro, muestra una p†gina. Sin ambos, muestra
una p†gina desde 11 l°neas antes de la actual. Si hay m†s l°neas que una
p†gina, el programa pausar† tras cada pantalla.

[#],[#],#m - MOVER BLOQUE

Mueve un bloque de texto antes de la l°nea indicada en el tercer par†metro.
Es como copiar y luego borrar el original.

[#][,#]p - PµGINA

Similar a l, pero la p†gina empieza por defecto en la l°nea actual en vez
de 11 l°neas antes.

q - SALIR (QUIT)

Sale sin guardar m†s cambios.

[#][,#][?]r$,$ - REEMPLAZAR CADENA

Reemplaza la primera cadena por la segunda entre las l°neas indicadas. Sin
primer par†metro, empieza tras la l°nea actual; sin segundo, para al final
del archivo.

El signo de interrogaci¢n (?) pide confirmaci¢n antes de cada reemplazo.

[#][,#][?]s$ - BUSCAR CADENA

Busca la primera l°nea con la cadena indicada. Sin primer par†metro, busca
desde la actual; sin segundo, busca hasta el final.

El signo de interrogaci¢n (?) activa la confirmaci¢n. Responder "N" (No)
sigue buscando; "S" (S°) detiene la b£squeda. Si tiene Çxito, la l°nea
actual se sit£a donde termin¢ la b£squeda.

[#]t archivo - TRANSFERIR ARCHIVO

Inserta el contenido de un archivo externo antes de la l°nea indicada. Por
defecto es la l°nea actual.

[#]w archivo - ESCRIBIR ARCHIVO

Escribe el n£mero de l°neas indicado en el archivo. Sin par†metro, escribe
todo el b£fer.

AUTOR/MANTENIMIENTO

Gregory Pietsch, gpietsch@comcast.net
