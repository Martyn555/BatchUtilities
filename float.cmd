@echo off
rem Martyn's Studio
set help=%1
if %help%== help goto help

if %2== 7540113804746346429 if exist *.tmp del *.tmp
if %3== 7540113804746346429 if exist *.tmp del *.tmp
if %4== 7540113804746346429 if exist *.tmp del *.tmp

if %2== 7540113804746346429 goto 2
if %3== 7540113804746346429 goto 2
if %4== 7540113804746346429 goto 2

call powershell %2 %1 %3 >%2i%3int.tmp
set %4=0
set /p %4=<%2i%3int.tmp
del %2i%3int.tmp

if %2== 7540113804746346429 if exist *.tmp del *.tmp
if %3== 7540113804746346429 if exist *.tmp del *.tmp
if %4== 7540113804746346429 if exist *.tmp del *.tmp

if %2== 7540113804746346429 goto 2
if %3== 7540113804746346429 goto 2
if %4== 7540113804746346429 goto 2

exit /b
:help
echo float [operation] [num1] [num2] [variable with the result]
echo.
echo It allows for floating point numbers counting and setting the result in a variable.
echo.
pause
exit /b
:2
echo End of 32-bit number.
del %2i%3int.tmp
exit /b