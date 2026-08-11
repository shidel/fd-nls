# Language: Brazilian Portuguese
# File ending: pb
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

vmode [options]

Define e consulta os modos de texto de v¡deo atuais.

[none]      Exibe o modo de v¡deo e fonte atuais na STDOUT.
VESA        Exibe uma lista de modos VESA na STDOUT.
mode        Define o modo de v¡deo atual. (0-0xffff) ou um r¢tulo
            de modo com configura‡Æo opcional de fonte.

            Modos: BW40   Preto e Branco 40 Colunas (tamb‚m B40).
                   BW80   Preto e Branco 80 Colunas (tamb‚m B80, BW).
                   CO40   Cor 40 Colunas (tamb‚m C40).
                   CO80   Cor 80 Colunas (tamb‚m C80, COLOR).
                   MONO   Mono 80 Colunas.

            Fonts: Font8  Seleciona a fonte ROM 8x8. (tamb‚m F8)
                   Font14 Seleciona a fonte ROM 8x14 EGA. (tamb‚m F14)
                   Font16 Seleciona a fonte ROM 8x16 VGA. (tamb‚m F16)
