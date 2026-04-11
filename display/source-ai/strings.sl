; Language: Slovenian
; File ending: SL
; Codepage: 852
; This translation was made by Google Gemini.
; Please help the FreeDOS group to improve it.

; Miscellaneous DISPLAY loading error messages
errAlready       DB     "DISPLAY je ße naloßen", 0dH, 0aH, "$"
errNoDRDOS       DB     "FD-DISPLAY ni zdrußljiv s to razliüico DR-KEYB", 0dH, 0aH, "$"
sMemAllocatedBuffers
                 DB     "Dodeljeni medpomnilniki: $"
sInTPA           DB     " v TPA, $"
sInXMS           DB     " v XMS$"

; Hardware-driver specific messages
errAcient        DB     "DISPLAY: za to vrsto strojne opreme je zahtevan vsaj EGA adapter", 0dH, 0aH, "$"
errNoCGA         DB     "DISPLAY: CGA adapter ni bil najden", 0dH, 0aH, "$"
errDrvSpecific   DB     "DISPLAY: Kritiüna napaka, specifiüna za gonilnik", 0dH, 0aH, "$"

; Command line parsing error messages
SyntaxErrorStr:         DB      "Sintaktiüna napaka ($"
SES_ParamRequired       DB      ") Manjka zahtevan parameter", 0dH, 0aH, "$"
SES_UnexpectedEOL       DB      ") Nepriüakovan konec vrstice", 0dH, 0aH, "$"
SES_IllegalChar         DB      ") Neveljaven znak", 0dH, 0aH, "$"
SES_NameTooLong         DB      ") Ime gonilnika naprave je predolgo", 0dH, 0aH, "$"
SES_OpenBrExpected      DB      ") priüakovano (", 0dH, 0aH, "$"
SES_WrongHwName         DB      ") Neznano ime strojne naprave", 0dH, 0aH, "$"
SES_CommaExpected       DB      ") priüakovano ,", 0dH, 0aH, "$"
SES_CloseBrExpected     DB      ") priüakovano )", 0dH, 0aH, "$"
SES_WrongNumberPars     DB      ") Napaüno Átevilo parametrov", 0dH, 0aH, "$"
SES_TooManyPools        DB      ") Preveü programskih kodnih tabel (MAX=5)", 0dH, 0aH, "$"
SES_ListTooLong         DB      ") Seznam je predolg", 0dH, 0aH, "$"
SES_TooManyHWPools      DB      ") Preveü strojnih kodnih tabel", 0dh, 0ah, "$"
SES_NoAllocatedBufs     DB      ") Ni dovolj pomnilnika za dodelitev medpomnilnika", 0dH, 0aH, "$"
SES_InvalidParameter    DB      ") Neveljaven parameter", 0dh, 0ah, "$"

