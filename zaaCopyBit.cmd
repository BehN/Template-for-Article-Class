@echo off

@set S0="K:\!!Kfast\!.Bit"
@set D0="!.Bit" 
@robocopy %S0%  "%D0%"  /mir /DCOPY:T /COPY:DAT /FFT  /NFL /NDL /TEE /Z /W:3
@robocopy %S0%  "%D0%"  /mir /DCOPY:T /COPY:DAT /FFT  /NFL /NDL /TEE /Z /W:3 

::---------------------------------------------------------------------------------------------
::@choice /C X /T 10 /D X /M "wait/press 'X' to quit" 
::@timeout /t 3 /nobreak

::pause