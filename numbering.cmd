@echo off

if %1== help goto help

if not defined numberingmoduley goto numberingmodule1
if defined numberingmoduley goto numberingmodule2

:help
echo numbering [operation] [start number] [transition number] [finish number] [variable with the result]
echo Allows numbering in a goto loop.
echo If numbering isn't finished (using x parameter) the next use of this command will cause to contunue numbering.
exit/b

:numberingmodule1
rem początek
set numberingmoduley=%2
rem działanie
set numberingmodulez=%1
rem przeskok
set numberingmodulew=%3

goto numberingmodule2

:numberingmodule2

set /a numberingmodulex=%numberingmoduley% %numberingmodulez% %numberingmodulew%
set numberingmoduley=%numberingmodulex%
set %5=%numberingmodulex%
if %4== x goto numberingmodule3
if %numberingmodulex% GEQ %4 goto numberingmodule1
:numberingmodule3