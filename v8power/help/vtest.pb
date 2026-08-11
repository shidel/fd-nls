# Language: Portuguese (Brazil)
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vtest [opá‰es]

Um testador de estado. Pode realizar v†rias verificaá‰es que podem se
resumir a TRUE ou FALSE. O resultado Ç passado como um errorlevel. Quando
a resposta Ç TRUE, Ç retornado um zero. Se a resposta for FALSE, um 1 Ç
retornado. O uso de sintaxe incorreta e outros erros semelhantes
retornar∆o o c¢digo de sa°da 100.

Testes:

    val1 /eq val2    valores s∆o iguais
    val1 /ne val2    valores n∆o s∆o iguais
    val1 /ge val2    val1 Ç maior ou igual a val2
    val1 /le val2    val1 Ç menor ou igual a val2
    val1 /gt val2    val1 Ç maior que val2
    val1 /lt val2    val1 Ç menor que val2
    string           string n∆o Ç nula
    /n string        string n∆o Ç nula
    /z string        string Ç nula
    /v number        n£mero Ç v†lido
    /f file          arquivo existe
    /d dir           caminho existe
    /e file ou dir   qualquer tipo de entrada de diret¢rio

Operadores de express∆o:

    /c expression    Foráar que um valor seja tratado como string e
                     realizar uma comparaá∆o sens°vel a mai£sculas.
    /i expression    Foráar que um valor seja tratado como string e
                     realizar uma comparaá∆o insens°vel a mai£sculas.
    exp1 /and exp2   Ambas as express‰es devem ser TRUE.
    exp1 /or /exp2   Qualquer express∆o pode ser TRUE.
    /not expression  Inverter o resultado de uma express∆o.

Outras opá‰es:

    /tf              Exibir TRUE ou FALSE ao terminar.

Por padr∆o, a comparaá∆o de valores baseia-se no seu tipo. Se ambos os
valores forem um n£mero (representado em decimal ou hexadecimal), a
comparaá∆o ser† feita matematicamente. Caso contr†rio, ser† realizada
uma comparaá∆o alfabÇtica que n∆o diferencia mai£sculas de min£sculas. O
uso das opá‰es /c ou /i foráar† uma comparaá∆o baseada em texto,
independentemente do tipo de dados do valor. Um valor vazio n∆o possui
um valor numÇrico e foráar† os dois itens a serem comparados como strings.

Exemplos b†sicos:

O arquivo chamado TEST.TXT existe:           vtest /f TEST.TXT
O arquivo chamado TEST.TXT n∆o existe:       vtest /not /f TEST.TXT
O arquivo A.TXT ou B.TXT existe:             vtest /f A.TXT /or /f B.TXT
Nem o arquivo A.TXT nem o B.TXT existem:     vtest /not /f A.TXT /and /not
                                             /f B.TXT
%1 Ç um n£mero:                              vtest /v %1
%1 Ç um n£mero de 1 a 10:                    vtest /v %1 /and 1 /le %1
                                             /le 10

Embora as opá‰es /f, /d e /e testem entradas de arquivos ou diret¢rios,
elas podem usar modificadores de express∆o como /not, /c e /i e tambÇm
oferecem suporte a curingas. Depois que o sistema de arquivos for
verificado quanto Ö existància de uma entrada correspondente, elas se
tornam o valor do primeiro item correspondente e podem ser tratadas como
valores. Se nenhuma entrada correspondente for encontrada, o valor se
torna nulo e muito provavelmente far† com que uma express∆o seja
avaliada como FALSE.

Ao realizar uma comparaá∆o de dois valores, se cada valor contiver um
n£mero v†lido (decimal ou hexadecimal), a comparaá∆o ser† realizada
numericamente. Se qualquer um dos valores n∆o for um n£mero, ser†
comparado alfabeticamente. Embora seja poss°vel misturar tipos de dados
em uma sÇrie de comparaá‰es, o resultado pode ser dif°cil de prever e
geralmente n∆o Ç recomendado.

Aspas N«O s∆o usadas para strings com espaáos. Os caracteres de aspas s∆o
sempre tratados como caracteres de texto normais. O analisador de linha
de comando separar† as strings apenas quando um SWITCH_CHAR (normalmente /)
for detectado. Este Ç um exemplo aceit†vel:

vtest a, b and c /lt d, e and f /and 6 /gt 5 /lt 7

O uso de aspas para simplesmente envolver strings produzir† resultados
errìneos. O exemplo a seguir SEMPRE resultar† em TRUE, independentemente
do valor de %1:

vtest /n "%1"

AlÇm disso, se uma string contiver o SWITCH_CHAR, a parte ap¢s o
SWITCH_CHAR ser† interpretada como uma opá∆o de programa, a menos que
seja escapada inserindo um SWITCH_CHAR adicional. Por exemplo, "Y/N"
seria interpretado como a string "Y" e a opá∆o "/N". Para interpretar
ambos como uma string seria "Y//N". Por exemplo:

vtest /n y//n
