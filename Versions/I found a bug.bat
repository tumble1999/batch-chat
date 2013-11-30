@echo off
ECHO PRESS CTRL + SHIFT + D TO OPEN DEVELOPER>developer.vbs
cd ..
title Bugs
if EXIST goto START
if NOT EXIST Locker goto MAKE
:MAKE
md Bugs
GOTO START
:BUG
ECHO %BUG%>>bug.txt
GOTO NEWBUG
:START
CD Bugs
SET /P B=Tell me your bug or type "exit" to exit:
SET BUG=%B%
IF %B%==exit GOTO EXIT
GOTO BUG
:NEWBUG
SET /P BUG=Tell me your next bug or type "exit" to exit:
IF %BUG%==exit GOTO EXIT
GOTO BUG
:EXIT
cls
ECHO PRESS CTRL + SHIFT + D TO OPEN DEVELOPER>developer.vbs
ECHO BYE!!
pause