@echo off
set log=readme.txt
set a=Readme_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt
set b=Log_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt
set c=Glist_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt
:createlog
echo start.backup.%date% >> %log%
echo var.check.a.%a%/var.check.b.%b%/var.check.c.%c%/
echo file.created.%a%
echo file.created.%b%
echo file.created.%c%
echo file.copied.readmemd.to.%a%
echo file.copied.readmetxt.to.%b%
echo file.copied.gamelistmd.to.%c%
echo backup.completed
:createfiles
echo Backup Readme %date% > %a%
echo Backup Log %date% > %b%
echo Backup Glist %date% > %c%
:copyfiles
copy "readme.md" "%a%"
copy "readme.txt" "%b%"
copy "gamelist.md" "%c%"
:movefiles
move %a% "/backup"
move %b% "/backup"
move %c% "/backup"