@echo off
rem Martyn’s Studio
if %1== help goto help

if exist %1.mp3 rename %1.mp3 toplaymp3now.mp3
if exist toplaymp3now.mp3 start toplaymp3nowvbs.vbs
timeout 1 /nobreak >nul
rem Martyn’s Studio
if exist toplaymp3now.mp3 rename toplaymp3now.mp3 %1.mp3
exit /b

:help
echo playmp3 [file name]
echo.
rem Martyn’s Studio
echo Use file name or path without extension.
echo.
pause
