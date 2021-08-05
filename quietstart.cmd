@echo off

if %1== help goto help

set xxxxxxquietstartmodule=%1
echo ^Set WshShell = CreateObject("WScript.Shell") >quietstartmodule.vbs
echo ^WshShell.Run ^chr(34) ^& "%xxxxxxquietstartmodule:"=%" ^& ^Chr(34), 0 >>quietstartmodule.vbs
echo ^Set WshShell = Nothing >>quietstartmodule.vbs
start quietstartmodule.vbs
exit /b

:help
echo quietstart [batch file name]
echo.
echo Use file name or path without extension.
echo.
pause