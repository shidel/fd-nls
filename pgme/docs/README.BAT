@echo off

REM Just keeping this with the "README" BLAH BLAH BLAH file. For now,
REM I may stick in with the PGME sources. But, It's small so... :-)

if "%LANG%" == "" goto NoLang
if not exist BLAH-%LANG%.TXT goto NoLang
QSCROLL.EXE BLAH-%LANG%.TXT
goto Done
:NoLang
QSCROLL.EXE BLAH-EN.TXT
:Done
