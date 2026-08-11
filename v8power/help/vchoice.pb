# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vchoice [options]

Escolha uma opá∆o.

Retorna um errorlevel da escolha selecionada com base em seu n£mero de
entrada. N∆o a letra/n£mero da escolha. Por exemplo, se o segundo item
for escolhido, retornar† um errorlevel 2. Independentemente de qualquer
prefixo (Como C, 1, R, etc). AlÇm disso, recomendo pessoalmente o uso
de auto para qualquer conjunto de escolhas com um prefixo de letra ou
n£mero.

    [none]      Executa com todas as configuraá‰es padr∆o autom†ticas.
    /A n        Define o atributo de texto para n no item selecionado.
    /B color    Define a cor de fundo como color (ou valor) para o
                item selecionado.
    /F color    Define a cor do texto como color (ou valor) para o
                item selecionado.
    /D n        PrÇ-seleciona o n£mero do item n como a escolha padr∆o.
    type        Tipo de seleá∆o direta por tecla.
                    off     Seleciona apenas com as setas.
                    auto    Deteta caracteres de salto direto. (Padr∆o)
                    alpha   Salta para as seleá‰es usando A-Z.
                    digit   Salta para as seleá‰es usando 1-9 (+0).
    /Q          Consulta o resultado. Quando a escolha Ç feita, o seu
                texto ser† enviado para STDOUT.
    /T seconds  Atraso em segundos antes do item padr∆o ser
                selecionado automaticamente (0-3600). Note que
                mesmo que o usu†rio navegue para outro item, o
                padr∆o original ser† escolhido ao fim do tempo.
    /P n        Usa modo de sondagem e prÇ-seleciona o item n como
                a escolha atual. Nota: qualquer mudanáa de seleá∆o
                sair† do vchoice e retornar† 100+ o n£mero atual.
    /K n        Usa n em vez do caractere de moldura para detectar
                limites.
    CTRL-C      Quando especificado e Control-C Ç pressionado, sair†
                com um errorlevel de 200.

    tba         (Ainda em desenvolvimento, mais ser† anunciado)
