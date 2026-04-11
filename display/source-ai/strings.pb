; Language: Portuguese (Brazil)
; File ending: PB
; Codepage: 858
; This translation was made by Google Gemini.
; Please help the FreeDOS group to improve it.

; Miscellaneous DISPLAY loading error messages
errAlready       DB     "DISPLAY j  est  carregado", 0dH, 0aH, "$"
errNoDRDOS       DB     "FD-DISPLAY ‚ incompat¡vel com esta versÆo de DR-KEYB", 0dH, 0aH, "$"
sMemAllocatedBuffers
                 DB     "Buffers alocados: $"
sInTPA           DB     " em TPA, $"
sInXMS           DB     " em XMS$"

; Hardware-driver specific messages
errAcient        DB     "DISPLAY: ‚ necess rio ao menos um adaptador EGA para este tipo de hardware", 0dH, 0aH, "$"
errNoCGA         DB     "DISPLAY: adaptador CGA nÆo foi encontrado", 0dH, 0aH, "$"
errDrvSpecific   DB     "DISPLAY: erro cr¡tico espec¡fico do driver", 0dH, 0aH, "$"

; Command line parsing error messages
SyntaxErrorStr:         DB      "Erro de sintaxe ($"
SES_ParamRequired       DB      ") Falta parƒmetro obrigat¢rio", 0dH, 0aH, "$"
SES_UnexpectedEOL       DB      ") Fim de linha inesperado", 0dH, 0aH, "$"
SES_IllegalChar         DB      ") Caractere ilegal", 0dH, 0aH, "$"
SES_NameTooLong         DB      ") Nome do driver de dispositivo muito longo", 0dH, 0aH, "$"
SES_OpenBrExpected      DB      ") ( esperado", 0dH, 0aH, "$"
SES_WrongHwName         DB      ") Nome de dispositivo de hardware desconhecido", 0dH, 0aH, "$"
SES_CommaExpected       DB      ") , esperado", 0dH, 0aH, "$"
SES_CloseBrExpected     DB      ") ) esperado", 0dH, 0aH, "$"
SES_WrongNumberPars     DB      ") N£mero incorreto de parƒmetros", 0dH, 0aH, "$"
SES_TooManyPools        DB      ") Muitas p ginas de c¢digo de software (MµX=5)", 0dH, 0aH, "$"
SES_ListTooLong         DB      ") A lista ‚ muito longa", 0dH, 0aH, "$"
SES_TooManyHWPools      DB      ") Muitas p ginas de c¢digo de hardware", 0dh, 0ah, "$"
SES_NoAllocatedBufs     DB      ") Mem¢ria insuficiente para alocar qualquer buffer", 0dH, 0aH, "$"
SES_InvalidParameter    DB      ") Parƒmetro inv lido", 0dh, 0ah, "$"

