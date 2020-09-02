@echo off
set help=%1
if %help%== help goto help
rem Martyn's Studio
set /a %2=%RANDOM% * %1 / 32768 + 1
set /a %2=%RANDOM% * %1 / 32768 + 1
set /a %2=%RANDOM% * %1 / 32768 + 1
exit /b

:help
echo nrandom [to] [variable with the result]
echo.
echo It allows you to set a random number in a variable.
echo.
pause
exit /b