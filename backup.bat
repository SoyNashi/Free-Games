@echo off
set log=readme.txt
set a=Readme_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt
set b=Log_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt
set c=Glist_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt
:createlog
echo start.backup.%date% >> %log%
echo var.check.a.%a%/var.check.b.%b%/var.check.c.%c%/ >> %log%
echo file.created.%a% >> %log%
echo file.created.%b% >> %log%
echo file.created.%c% >> %log%
echo file.copied.readmemd.to.%a% >> %log%
echo file.copied.readmetxt.to.%b% >> %log%
echo file.copied.gamelistmd.to.%c% >> %log%
echo backup.completed >> %log%
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