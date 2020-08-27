@echo off
if %1== help goto help
if %1== UnatedStates chcp 437 >nul
if %1== Latin1 chcp 850 >nul
if %1== Latin2 chcp 852 >nul
if %1== Cyrillic chcp 855 >nul
if %1== Turkish chcp 857 >nul
if %1== Portuguese chcp 860 >nul
if %1== Icelandic chcp 861 >nul
if %1== Canadian-French chcp 863 >nul
if %1== Nordic chcp 865 >nul
if %1== Russian chcp 866 >nul
if %1== ModernGreek chcp 869 >nul
if %1== WestEuropeanLatin chcp 1252 >nul
if %1== UTF-7 chcp 65000 >nul
if %1== UTF-8 chcp 65001 >nul
exit /b
rem Martyn's Studio

:help
echo coding [code]
echo.
echo It allows you to change the character encoding from the following list:
echo.
echo    Latin1		Nordic
echo    Latin2		Russian
echo    Cyrillic		ModernGreek
echo    Turkish		WestEuropeanLatin
echo    Portuguese		UTF-7
echo    Icelandic		UTF-8
echo    Canadian-French	UnatedStates
echo.
pause