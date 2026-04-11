; Diverse felmeddelanden f”r n„r DISPLAY l„ses in
errAlready       DB     "DISPLAY „r redan inl„st", 0dH, 0aH, "$"
errNoDRDOS       DB     "FD-DISPLAY „r inkompatibelt med denna version av DR-KEYB", 0dH, 0aH, "$"
sMemAllocatedBuffers
                 DB     "Allokerade buffertar: $"
sInTPA           DB     " i TPA, $"
sInXMS           DB     " i XMS$"

; Meddelanden specifika f”r H†rdvarudrivrutin
errAcient        DB     "DISPLAY: †tminstone en EGA-adapter kr„vs f”r denna typ av h†rdvara", 0dH, 0aH, "$"
errNoCGA         DB     "DISPLAY: CGA-adapter hittades ej", 0dH, 0aH, "$"
errDrvSpecific   DB     "DISPLAY: Drivrutinsspecifikt kritiskt fel", 0dH, 0aH, "$"

; Felmeddelanden f”r kommandoradstolkning
SyntaxErrorStr:         DB      "Syntaxfel ($"
SES_ParamRequired       DB      ") Saknar n”dv„ndig parameter", 0dH, 0aH, "$"
SES_UnexpectedEOL       DB      ") Ov„ntat filslut", 0dH, 0aH, "$"
SES_IllegalChar         DB      ") Otill†tet tecken", 0dH, 0aH, "$"
SES_NameTooLong         DB      ") Namn f”r enhetsdrivrutin f”r l†ngt", 0dH, 0aH, "$"
SES_OpenBrExpected      DB      ") ( f”rv„ntade", 0dH, 0aH, "$"
SES_WrongHwName         DB      ") Ok„nt enhetsnamn f”r h†rvara", 0dH, 0aH, "$"
SES_CommaExpected       DB      ") , f”rv„ntade", 0dH, 0aH, "$"
SES_CloseBrExpected     DB      ") ) f”rv„ntade", 0dH, 0aH, "$"
SES_WrongNumberPars     DB      ") Felaktigt antal parametrar", 0dH, 0aH, "$"
SES_TooManyPools        DB      ") F”r m†nga programvarukodsidor (MAX=5)", 0dH, 0aH, "$"
SES_ListTooLong         DB      ") Listan „r f”r l†ng", 0dH, 0aH, "$"
SES_TooManyHWPools      DB      ") F”r m†nga h†rdvarukodsidor", 0dh, 0ah, "$"
SES_NoAllocatedBufs     DB      ") Inte tillr„ckligt med minne f”r att allokera buffert", 0dH, 0aH, "$"
SES_InvalidParameter    DB      ") Ogiltig parameter", 0dh, 0ah, "$"
