@echo off

if %1== help goto help
if not exist %2 call powershell Compress-Archive -Path %1 -DestinationPath %2
if exist %2 call powershell Compress-Archive -Path %1 -Update -DestinationPath %2
exit /b

:help
echo unarch ["file path"] ["output archive"]
echo.
echo It allows you to add a file to the archive or create an archive with the selected file.
pause