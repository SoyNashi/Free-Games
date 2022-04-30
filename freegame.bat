@echo off
color 0a
set readme=readme.md
set logtext=readme.txt
:startt
echo app.started.on.%date%/var.check.readme.%readme%/var.check.logtext.%logtext% >> %logtext%
:start
set code= %random%
echo code.created/var.check.code.%code%/code.%code% >> %logtext%
cls
echo code = %code%
echo 1 = crear
echo 2 = eliminar
echo 3 = log msg
set /p a= - 
if %a% == 1 goto d
if %a% == 2 goto b
if %a% == 3 goto c
cls 
echo command.not.found >> %logtext%
echo Command not found
pause > nul
echo app.command.exit.%date% >> %logtext%
exit

:d
echo command.goto.d/var.check.code.%code%/var.check.a.%a% >> %logtext%
cls
echo code = %code%
set /p name= Nombre/ 
set /p url= Link/
echo ---------------------------------------------------------------------------- >> %readme%
echo %code% >> %readme%
echo %date% >> %readme%
echo %name% >> %readme%
echo %url% >> %readme%
echo ---------------------------------------------------------------------------- >> %readme%
echo new.command/add.game/date %date%, name %name%, link %url% /file.name %readme% /date.%date% /code.%code% >> %logtext%

goto start
:b
echo command.goto.b/var.check.code.%code%/var.check.a.%a% >> %logtext%
cls 

goto start
:c 
echo command.goto.c/var.check.code.%code%/var.check.a.%a% >> %logtext%
cls 

goto start