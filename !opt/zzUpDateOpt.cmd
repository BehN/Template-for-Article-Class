@echo off
set PW="Y"
set /p code="Enter Confirmation Code: "
if "%code%"==%PW% goto thejob
exit
::----------------------------------------------------------------------------------------------
:thejob
set S0="K:\XXKK\zSBN-L\!SBN-Templates\Article\!opt"
set D0=..\!opt 

robocopy %S0%  %D0%  /mir /DCOPY:T /COPY:DAT /FFT  /NFL /NDL /TEE /Z /W:3 
robocopy %S0%  %D0%  /mir /DCOPY:T /COPY:DAT /FFT  /NFL /NDL /TEE /Z /W:3 

::---------------------------------------------------------------------------------------------
::@choice /C X /T 10 /D X /M "wait/press 'X' to quit" 
timeout /t 3 /nobreak
::pause>nul