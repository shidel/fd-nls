; Language: Brazil Port. (pb)
; File ending: pb
; Codepage: 858
; This translation was created by Google AI.
; Please help the FreeDOS group to improve it.

;
; XCDMSGS.PB -- Mensagens de inicializaá∆o do XCDROM em "Portuguàs do Brasil".
; Escrito por Jack R. Ellis, 8-Fev-2006.
;
; Usu†rios que desejam "Internacionalizar" o XCDROM precisam alterar apenas
; ESTE arquivo! O novo arquivo pode ser nomeado como desejado, por exemplo
; XCDMSGS.FR (Francàs), XCDMSGS.PB (Portuguàs do Brasil) etc. O arquivo desejado
; deve ser copiado para XCDMSGS.TXT, e o driver desejado pode ent∆o ser
; remontado com qualquer montador NASM (dispon°vel no SourceForge), usando
; a seguinte linha de comando:
;
;     NASM -o XCDROM.SYS -l XCDROM.LST -d language XCDROM.ASM
;
; Observe que o condicional -d language faz com que o montador leia o arquivo
; XCDMSGS.TXT, em vez do arquivo padr∆o XCDMSGS.ENG.
;
; As seguintes REGRAS se aplicam Ö modificaá∆o das mensagens mostradas abaixo:
;
;  A) Todos os R‡TULOS de mensagem ("XCMsg" etc.) devem aparecer como mostrado.
;
;  B) Todos os bytes CR, LF e o byte final $ devem aparecer como mostrado.
;     Apenas os bytes de TEXTO da mensagem (letras, n£meros e pontuaá∆o)
;     est∆o abertos a alteraá‰es.
;
;  C) Deve haver pelo menos 42 caracteres do in°cio de "XCMsg" atÇ o in°cio de
;     "Suffix", pois o driver là 40 bytes de dados para esta †rea (o nome
;     de cada drive) e acrescenta um $ final antes de exibir o nome final
;     do drive de CD-ROM.
;
;  D) Outras mensagens MODIFICADAS pela inicializaá∆o do driver s∆o:
;
;	1) Os 8 bytes do nome do driver em "DvrMsg1".
;	2) Os 4 bytes do endereáo do controlador em "CtlrAdr".
;	3) Os 8 bytes do I.D. do controlador em "CtlrID".
;	4) O byte do n£mero da unidade do drive em "UMsgNo".
;	5) Os 4 bytes do modo UltraDMA em "UDMode".
;
; Para um exemplo de "Internacionalizaá∆o", compare o arquivo XDMAMSGS.ENG
; com o arquivo XDMAMSGS.NL, ambos inclu°dos no pacote atual do driver XDMA.
; O XDMAMSGS.NL traduz todas as mensagens de inicializaá∆o do XDMA para o
; idioma holandàs. Este arquivo foi escrito por Bernd Blaauw, que sugeriu
; tornar o XDMA, e agora o XCDROM, em drivers "Internacionais".
;
;
XCMsg	db	CR,LF,'GCDROM '
	db	VER		;O XCDROM.ASM fornece a vers∆o e a data!
	db	CR,LF,'$'
DvrMsg	db	'O nome do driver Ç "'
DvrMsg1	db	'        "$'
CtlrMsg	db	'Controlador SATA Native IDE no endereáo I-O '
CtlrAdr0 db	'xxxxh/'
CtlrAdr	db	'xxxxh, Chip I.D. '
CtlrID	db	'xxxxxxxxh.',CR,LF,'$'
VEMsg	db	'.',CR,LF,'Erro de inicializaá∆o VDS$'
LEMsg	db	'.',CR,LF,'/L Inv†lido$'
SyEMsg	db	'.',CR,LF,'ERRO '
SyMsg	db	'Sincronizando I-O com o driver XDMA$'
PRMsg	db	'Nenhum CPU 80386+$'
Suffix	db	'; GCDROM n∆o carregado!',CR,LF,'$'
UnitMsg	db	'Unidade '
UMsgNo	db	'0:  $'
TOMsg	db	' tempo esgotado na seleá∆o do dispositivo$'
IDMsg	db	' erro de Identify Device$'
NCMsg	db	' n∆o Ç um CD-ROM ATAPI$'
NDMsg	db	'Nenhum drive CD-ROM para usar$'
PriMsg	db	'Prim†rio-$'
SecMsg	db	'Secund†rio-$'
MstMsg	db	'master$'
SlvMsg	db	'slave$'
ComMsg	db	', $'
UDMsg	db	', ATA-'
UDMode	db	'   $'
PIOMsg	db	', modo PIO$'
CRMsg	db	'.',CR,LF,'$'
