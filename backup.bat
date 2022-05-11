@echo off
set a=Readme_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt
set b=Log_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt
set c=Glist_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%.txt
:createfiles
echo Backup Readme %date% > %a%
echo Backup Log %date% > %b%
echo Backup Glist %date% > %c%
:copyfiles
copy "readme.md" "%a%"
copy "readme.txt" "%b%"
copy "gamelist.md" "%c%"
