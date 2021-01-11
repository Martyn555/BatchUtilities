@echo off
if %1==help goto help

set tosendxxxxxxxxxxxxxxxxxxxxxxxxxxx=%1
set tosendyyyyyyyyyyyyyyyyyyyyyyyyyyy=%2

set tosendqqqqqqqqqqqqqqqqqqqqqqqqqqq=%3
set tosendwwwwwwwwwwwwwwwwwwwwwwwwwww=%4




echo Set wshShell =wscript.CreateObject("WScript.Shell") >tosend.vbs
echo Dim tosendqqqqqqqqqqqqqqqqqqqqqqqqqqq >>tosend.vbs
echo tosendqqqqqqqqqqqqqqqqqqqqqqqqqqq=0 >>tosend.vbs
echo Do While tosendqqqqqqqqqqqqqqqqqqqqqqqqqqq^<%tosendqqqqqqqqqqqqqqqqqqqqqqqqqqq% >>tosend.vbs
echo WshShell.AppActivate "%tosendyyyyyyyyyyyyyyyyyyyyyyyyyyy:"=%" >>tosend.vbs
echo wshshell.sendkeys "%tosendxxxxxxxxxxxxxxxxxxxxxxxxxxx:"=%" >>tosend.vbs
echo WScript.Sleep %tosendwwwwwwwwwwwwwwwwwwwwwwwwwww% >>tosend.vbs
echo tosendqqqqqqqqqqqqqqqqqqqqqqqqqqq=tosendqqqqqqqqqqqqqqqqqqqqqqqqqqq+1 >>tosend.vbs
echo Loop >>tosend.vbs
start tosend.vbs
exit /B



:help
echo send "[text]" "[window name]" [amount] [delay]
echo.
echo Send allows you to send a selection of characters to the window.
echo Enter the sending delay in thousandths of a second. For example: 500 - 0.5 sec.
echo.
echo In addition to leaving characters in the text, you can also use buttons:
echo {BACKSPACE}		{BREAK}
echo {CAPSLOCK}		{CLEAR}
echo {DELETE}		{INSERT}
echo {LEFT}			{RIGHT}
echo {UP}			{DOWN}
echo {END}			{ENTER}
echo {ESCAPE}		{HELP}
echo {HOME}			{NUMLOCK}
echo {PGDN}			{PGUP}
echo {PRTSC}			{SCROLLLOCK}
echo {TAB}			{F1} through {F16}
echo {~}			{!}
echo {^}			{+}
pause