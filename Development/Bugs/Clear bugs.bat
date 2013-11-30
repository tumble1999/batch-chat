@echo off
SET /a YEAR=%DATE:~6,4%
SET /a MONTH=%DATE:~3,2%
SET /a NO=%DATE:~0,2%
cd C:\Users\camtr_000\Desktop\Chat
title Bugs
if EXIST goto START
if NOT EXIST Bugs goto EXIT
:START
cd C:\Users\camtr_000\Desktop\Chat\Bugs
title $RECYCLE.BIN
if EXIST goto MOVE
if NOT EXIST Bugs goto MAKE
:MAKE
md $RECYCLE.BIN
:MOVE
cd $RECYCLE.BIN
title "%YEAR%/%MONTH%/%NO%"
if EXIST goto MOVED
if NOT EXIST Bugs goto MAKED
:MAKED
md "%YEAR%/%MONTH%/%NO%"
:MOVED
CD C:\Users\camtr_000\Desktop\Chat\Bugs
MOVE C:\Users\camtr_000\Desktop\Chat\Bugs\bug.txt C:\Users\camtr_000\Desktop\Chat\Bugs\$RECYCLE.BIN\%YEAR%\%MONTH%\%NO% 
pause
:EXIT