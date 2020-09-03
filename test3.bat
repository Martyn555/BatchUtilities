@echo off
set x=2
set y=1
set z=0
goto fi

:fi
call float + %x% %y% z
set y=%z%
echo %y%
goto fi