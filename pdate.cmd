@echo off
rem Martyn's Studio
if %1== help goto help
rem godziny
if %1== d set %2=%date:~0,2%

rem minuty
if %1== m set %2=%date:~3,2%

rem sekundy
if %1== y set %2=%date:~6%
exit /b

:help
echo pdate [atr] [variable]
echo.
echo It allows you to set any part of the date as a variable.
echo.
echo Attributes:
echo d = day		y = year
echo m = month
echo.
pause