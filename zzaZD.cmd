@echo OFF
cls
set DIRZIP="C:\My Program Files\!sbn.zip\7z.exe"

::DATE::----------------------------------------
::set DAY=%date:~6,4%.%date:~3,2%.%date:~0,2%
set DAY=%date:~8,2%.%date:~3,2%.%date:~0,2%
set NOW=%time:~0,2%%time:~3,2%

setlocal EnableDelayedExpansion
for /f "tokens=* delims= " %%a in ('echo %NOW%') do (set NOW=%%a & set NOW=!NOW: =!)
endlocal & set DAT=[%DAY%-%NOW%]
::-----------------------------------------------


::=============================================================================================
set DIR=%CD%
set DES=%DIR%--%DAT%.zip
call "k:\!!Kfast\!.Bat\zzzCln.cmd"
%DIRZIP% a -tzip "%DES%"  "%DIR%\*"
explorer "%DIR%\..\" 
::=============================================================================================


::----------------------------------------------------
::@choice /C X /T 10 /D X /M "wait/press 'X' to quit" 
timeout /t 1 /nobreak
::----------------------------------------------------
