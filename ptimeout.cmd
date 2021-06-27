@echo off
if %1==help goto help

powershell Start-Sleep -m %1

exit /b

:help
echo ptimeout [milliseconds] 
echo.
echo This command is equivalent to the timeout command with the nobreak switch and nul redirection.
echo Ptimeout, unlike timeout, works in milliseconds, not seconds.
echo.
pause
exit /b