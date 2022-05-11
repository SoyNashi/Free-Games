@echo off
color 0a
set readme=readme.md
set logtext=readme.txt
set glist=gamelist.md
:startt
echo app.started.on.%date%/var.check.readme.%readme%/var.check.logtext.%logtext%/var.check.glist.%glist% >> %logtext%
:start
set code= %random%

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
echo #### %name% >> %glist%
echo new.command/add.game/date %date%, name %name%, link %url% /file.name %readme% /date.%date% /code.%code% >> %logtext%
echo new.command/add.game.in.glist/date %date%, name %name% /file.name %glist% /date.%date% /code.%code% >> %logtext%

goto start
:b
echo command.goto.b/var.check.code.%code%/var.check.a.%a% >> %logtext%
echo code.created/var.check.code.%code%/code.%code% >> %logtext%
cls 
echo Zona de eliminacion de juego
set /p ejfecha= Fecha- 
set /p ejnombre= Nombre- 
set /p ejlink= Link- 
set /p ejcode= Code- 
echo recibido
echo delete.game/started.command/date.%ejfecha%/name.%ejnombre%/link.%ejlink%/code.%ejcode% >> %logtext%
pause > nul
cls
echo Comprobacion de seguridad
echo =========================================
echo = Fecha- %ejfecha%
echo = Nombre- %ejnombre%
echo = Link- %ejlink%
echo = Code- %ejcode%
echo =========================================
set /p ejcomprobacion= Seguro? (Y/N): 
if %ejcomprobacion%== Y goto ejyes
if %ejcomprobacion%== y goto ejyes
if %ejcomprobacion%== N goto ejno
if %ejcomprobacion%== n goto ejno
goto start
:ejyes
echo delete.game/accepted.command/date.%ejfecha%/name.%ejnombre%/link.%ejlink%/code.%ejcode% >> %logtext%
set ejfile=%ejcode%.txt
echo var.check.ejfile.%ejfile% >> %logtext%
echo ========================================= > %ejfile%
echo = Fecha- %ejfecha% >> %ejfile%
echo = Nombre- %ejnombre% >> %ejfile%
echo = Link- %ejlink% >> %ejfile%
echo = Code- %ejcode% >> %ejfile%
echo ========================================= >> %ejfile%
echo delete.game/done.command/date.%ejfecha%/name.%ejnombre%/link.%ejlink%/code.%ejcode% >> %logtext%
move %ejfile% "deleted/"
echo file.moved/command.move./%ejfile%./deleted/ >> %logtext%
goto start
:ejno
echo delete.game/canceled.command/date.%ejfecha%/name.%ejnombre%/link.%ejlink%/code.%ejcode% >> %logtext%
goto start

:c 
echo command.goto.c/var.check.code.%code%/var.check.a.%a% >> %logtext%
echo log msg
set /p logmsg=Mensaje- 
cls
echo ===========================
echo Log msg
echo %logmsg%
echo ===========================
echo ===========================>> %logtext%
echo Log msg >> %logtext%
echo %logmsg% >> %logtext%
echo =========================== >> %logtext%
pause
goto start