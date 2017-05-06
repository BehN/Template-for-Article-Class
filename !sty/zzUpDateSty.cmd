@echo off
set PW="Y"
set /p code="Enter Confirmation Code: "
if "%code%"==%PW% goto thejob
exit
::----------------------------------------------------------------------------------------------
:thejob
set S0="K:\XXKK\zSBN-J\!Templates\1.Art\Article\!sty"
set D0=..\!sty 

robocopy %S0%  %D0%  /mir /DCOPY:T /COPY:DAT /FFT  /NFL /NDL /TEE /Z /W:3 
timeout /t 3 /nobreak
robocopy %S0%  %D0%  /mir /DCOPY:T /COPY:DAT /FFT  /NFL /NDL /TEE /Z /W:3 

::---------------------------------------------------------------------------------------------
::@choice /C X /T 10 /D X /M "wait/press 'X' to quit" 
::pause>nul