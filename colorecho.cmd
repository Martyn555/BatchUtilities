@echo off
if %1== help goto help
call powershell Write-Host "%3" -ForegroundColor %2 -BackgroundColor %1
exit /b

:help
echo colorecho [atr] [atr2] ["text"]
echo.
echo Color attributes -- the first orresponds to the background; the second
echo the foreground. Each attribute can be any of the following values:
echo.
echo    Black       Gray
echo    Blue        DarkBlue
echo    Green       DarkGreen
echo    Cyan        DarkCyan
echo    Red         DarkRed
echo    Magenta     DarkMagenta
echo    Yellow      DarkYellow
echo    White       DarkGray
echo.
pause