@echo off

if %1== help goto help
call powershell Expand-Archive -Force %1 %2
exit /b

:help
echo unarch ["archive path"] ["output folder"]
echo.
echo Unarchive allows you to easily extract files from an archive.
pause