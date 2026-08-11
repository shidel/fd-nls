# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vecho [options] [text]

Exibe o texto na tela.

    [none]      Executa um Retorno de Carro e Avan‡o de Linha na tela.
    text        Escreve o texto na tela.
    /A n        Define o atributo de texto para n.
    /B color    Define o atributo do texto de fundo para color (ou um
                valor).
    /F color    Define o atributo do texto de primeiro plano para color
                (ou um valor).
    /BlinkOn    Ativa o bit de Piscar/Intensidade. (Come‡ar a piscar)
    /BlinkOff   Desativa o bit de Piscar/Intensidade. (Parar de piscar)
    /N          NÆo escreve um CRLF ao terminar.
    /P          Executa um CRLF agora.
    /S +        Insere um espa‡o entre os parƒmetros. (PADRÇO)
    /S -        NÆo adiciona espa‡o entre v rios parƒmetros.
    /C code     Escreve um c¢digo de caractere ASCII.
    /R times    Repete a pr¢xima grava‡Æo times vezes. (1-65535)
    /I          Escreve texto que pode estar aguardando no dispositivo
                STDIN.
    /G          Escreve o texto globalmente e ignora o enquadramento.
    /L          Escreve o texto localmente em rela‡Æo ao enquadramento.
                (PADRÇO)
    /K n        Usa n em vez do caractere de moldura para detectar
                limites.
    /X code     Apaga o resto da linha com c¢digo ASCII, mas nÆo move o
                cursor.
    /E          O mesmo que usar "/X 0x20" ou "/X32".
    /T file ID  Procura ID no file e processa como op‡äes de linha de
                comando. Op‡äes adicionais ap¢s essa chave preenchem
                as vari veis %1-%9 na string de texto.

    tba         (Ainda em desenvolvimento, mais ser  anunciado)
