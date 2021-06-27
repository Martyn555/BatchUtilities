@echo off

if %1== help goto help
rem godziny
if %1== h set %2=%time:~0,2%

rem minuty
if %1== m set %2=%time:~3,2%

rem sekundy
if %1== s set %2=%time:~6,2%

rem setne
if %1== f set %2=%time:~9,2%
exit /b

:help
echo ptime [atr] [variable]
echo.
echo It allows you to set any part of the time as a variable.
echo.
echo Attributes:
echo h = hour		s = second
echo m = minute		f = fraction of a second
echo.
pause