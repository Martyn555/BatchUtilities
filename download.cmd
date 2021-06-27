@echo off
if %1== help goto help

call powershell wget %1 -outfile %2 >nul

exit /b

:help
echo download ["URL"] ["output file"]
echo.
echo It allows you to download file from URL.
echo.
echo Exemplary method of use:
echo download "https://codeload.github.com/Martyn555/ITtestPL/zip/master" "catalog 1\archiwum.zip"
echo.
pause