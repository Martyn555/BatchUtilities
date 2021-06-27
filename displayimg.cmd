@echo off

if %1== help goto help

if %1== exit TASKKILL /IM iexplore.exe >nul
if %1== exit exit /b

set displayimgvariablexxxxxxxxxxname=%1
set displayimgvariablexxxxxxxxxxwidth=%2
set displayimgvariablexxxxxxxxxxhight=%3
set displayimgvariablewindowname=%4
set displayimgvariablewindownamex=%displayimgvariablewindowname:+= %

set /a displayimgvariablexxxxxxxxxxwidthplus=%displayimgvariablexxxxxxxxxxwidth% + 55
set /a displayimgvariablexxxxxxxxxxhightplus=%displayimgvariablexxxxxxxxxxhight% + 55

set displayimgvariablexxxxxxxxxxname1=%displayimgvariablexxxxxxxxxxname: =+%
if %displayimgvariablexxxxxxxxxxname:~0,1%== - set displayimgvariablexxxxxxxxxxname1=%cd%\%displayimgvariablexxxxxxxxxxname:~1%

echo Set objExplorer ^= CreateObject("InternetExplorer.Application")>dispimg.vbs
echo With objExplorer>>dispimg.vbs
echo     .Navigate "about:blank">>dispimg.vbs
echo     .Visible ^= ^1>>dispimg.vbs
echo     .Document.Title ^= "%displayimgvariablewindownamex%">>dispimg.vbs
echo     .Toolbar^=False>>dispimg.vbs
echo     .Statusbar^=False>>dispimg.vbs
echo     .Top^=400>>dispimg.vbs
echo     .Left^=400>>dispimg.vbs
echo     .Height^=%displayimgvariablexxxxxxxxxxhightplus%>>dispimg.vbs
echo     .Width^=%displayimgvariablexxxxxxxxxxwidthplus%>>dispimg.vbs
echo     .Document.Body.InnerHTML ^= "<center><img src='%displayimgvariablexxxxxxxxxxname1:+= %' width='%displayimgvariablexxxxxxxxxxwidth%' height='%displayimgvariablexxxxxxxxxxhight%'></center>">>dispimg.vbs
echo End With>>dispimg.vbs
copy images\1.gif todisp.gif >nul
start dispimg.vbs






exit /b

:help
echo displayimg [full path with the extension] [width in pixels] [height in pixels] [window name]
echo.

echo Enter the path name and replace the spaces with pluses.
echo If the image is in your program directory, enter -[filename with the extension.] Instead of the full path.
echo To close the previously opened image, type exit instead of the full path.
echo Supported file extensions: gif, jpg, png, bmp.
echo Enter the window name and replace the spaces with pluses.
echo.
pause
