# Language: Brazil Port.
# File ending: PB
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

FreeDOS NLSFUNC. Adiciona funcionalidade NLS (National Language Support).
(C) 2004 Eduardo Casino, under the terms of the GNU GPL, Version 2

  NLSFUNC [/Y|/?] [[D:][PATH]ARQUIVO]

  [D:][PATH]ARQUIVO  Caminho para um arquivo contendo o NLS
  /Y               Carrega a tabela SIM/N«O (opcional)
  /?               Mostra o uso

Exemplo:

  CONFIG.SYS
     COUNTRY=34,858,C:\COUNTRY.SYS

  AUTOEXEC.BAT
     LH DISPLAY CON=(EGA,858,2)
     MODE CON CP PREP=((850) C:\CPI\EGA.CPI)
     MODE CON CP PREP=((,437) C:\CPI\EGA.CPI)
     LH NLSFUNC /Y

Ent∆o mude as p†ginas de c¢digo usando o comando CHCP do FreeCOM.

Se vocà n∆o precisar mudar as p†ginas de c¢digo, apenas omita as linhas
MODE.
