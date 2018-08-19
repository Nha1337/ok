:: print details
@echo off
title GIT (%CD%)
echo *==================================================
echo * Author: Amir Rahimi [nightdvlpr[at]gmail[dot]com]
echo * Date: July 13, 2021
echo *==================================================

:: Data members
SETLOCAL 
set beginDay=1080
set until=1

::Let's make
for /l %%x in (%beginDay%, -1, %until%) do (
   echo %%x
   echo.>"%%x_%RANDOM%.txt"
   timeout /t .1
   echo "--------> %%x"
   git add .
   git commit --date="%%x day ago" -m "%%x => ok"
)

:: end local
ENDLOCAL

:: stay open!
pause