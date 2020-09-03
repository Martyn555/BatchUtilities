@echo off
color 0f
title BatchUtilities by Martyn555    GNU General Public License
echo.
echo colortext:
call colortext 0c "color" 0
call colortext 0e "text" 1
echo.
echo colorecho:
call colorecho Black Green "colorecho"
echo.
echo Float with new random:
call nrandom 99 w
call nrandom 99 x
call nrandom 99 y
call nrandom 99 z
call float + %w%.%x% %y%.%z% wynik
call float - %w%.%x% %y%.%z% wynik1
call float / %w%.%x% %y%.%z% wynik2
call float * %w%.%x% %y%.%z% wynik3

echo %w%.%x%+%y%.%z%=%wynik%
echo %w%.%x%-%y%.%z%=%wynik1%
echo %w%.%x%/%y%.%z%=%wynik2%
echo %w%.%x%*%y%.%z%=%wynik3%

echo.
echo coding:
call coding UTF-7
echo Zażółć gęśłą jaźń - UTF-7
call coding UTF-8
echo Zażółć gęśłą jaźń - UTF-8
echo.
echo ptime:
call ptime h x
call ptime m y
call ptime s z
call ptime f w
echo hour: %x%    minute: %y%    second: %z%    split second: %w%
echo.
echo pdate:
call pdate d x
call pdate m y
call pdate y z
echo day: %x%    month: %y%    year: %z%
echo.
pause>nul