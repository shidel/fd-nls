# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vcls [options]

Limpa a tela, †rea ou linha.

    [none]      Limpa a tela com o atributo de texto atual.
    n           Define o atributo de texto para n.
    /A n        Define o atributo de texto para n.
    /B color    Define o atributo de texto de fundo para color (ou
                um valor).
    /F color    Define o atributo de texto de primeiro plano para
                color (ou um valor).
    /G          Limpeza Global da Tela. (Padr∆o)
    /L          Limpeza Local da Tela. Detecta os arredores e limpa
                apenas isso. Provavelmente uma caixa, linha ou algo
                assim. Vocà n∆o precisa realmente dessa opá∆o. Pois
                talvez possa apenas redesenhar a caixa.
    /K n        Usa n em vez do caractere de moldura para detectar
                limites.
    TEXT        Limpa apenas o texto. Deixa todas as cores intactas
                e ignora seus atributos de cor.
    EOL         Limpa apenas do cursor atÇ o fim da linha.
    /C code     Limpa preenchendo com um c¢digo de caractere ASCII.
    /X column   Coluna absoluta da tela para iniciar a limpeza.
    /Y row      Linha absoluta da tela para iniciar a limpeza.
    /W width    Largura total da †rea a ser limpa.
    /H height   Altura total da †rea a ser limpa.
