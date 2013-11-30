@echo off
cd ../..
title Bugs.
if EXIST goto START
if NOT EXIST Bugs goto EXIT
:START
cd Bugs
findstr /v "jvdsjkhjsnfsjfjsdhfjfjsdhfjsbfjksfh" bug.txt
pause > bug_check.ini
cd C:\Users\camtr_000\Desktop\Chat\Development\Bugs
pause > opend.ini
:EXIT