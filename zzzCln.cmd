@echo off
::set Here=%CD%
::cd /d %~dp0\.. 

echo clean the directory!
echo.

:: win:---------
del .dropbox
rd /s /Q .tmp
rd /s /Q ~

::Matlab:------
del *.asv

:: Hspice:------
del *.log MIL.* sxcmd.* *.sx *.lis *.fsdef *.ic0 
del *.st0 *.pa0 *.sw0 *.tr0 *.ac0 *.str  


:: TeXnicCenter:------
del *.out *.log *.aux *.blg *.bbl *.toc *.dvi *.bak *.prj.bak 
del *.lot *.lof *.tps *.synctex *.tmp *.tps  *.pdfsync
del *.ps *.undo *.txt *.tex~ *.tex.backup *.brf

:: Beamer:------
del *.nav *.snm 

:: Vim:-----
del *.project.vim *.glg *.glo *.gls *.ist *.dcl  

:: HTML:------
del *.idx *.css *.ilg *.ind

:: TeXMaker:------
del *.gz 

:: Others:-------
del *.gitignore *._*  *.ini


::cd /d %Here%