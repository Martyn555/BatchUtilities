@echo off
rem Martyn's Studio
if %1== help goto help

if not defined y goto numberingmodule1
if defined y goto numberingmodule2

:help
echo numbering [operation] [start number] [transition number] [finish number] [variable with the result]
echo Allows numbering in a goto loop.
echo If numbering isn't finished (using x parameter) the next use of this command will cause to contunue numbering.
exit/b

:numberingmodule1
rem początek
set y=%2
rem działanie
set z=%1
rem przeskok
set w=%3
rem Martyn's Studio
goto numberingmodule2

:numberingmodule2
rem Martyn's Studio
set /a x=%y% %z% %w%
set y=%x%
set %5=%x%
if %4== x goto numberingmodule3
if %x% GEQ %4 exit/b