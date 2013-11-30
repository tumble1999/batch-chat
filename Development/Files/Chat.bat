@echo off
CD Commands
SETLOCAL DisableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %		%b in (1) do rem"') do (
set "DEL=%%a"
)
SET SERVER=call colorText 0d "[Server]
SET TEXT=call colorText 0e "
:NAME
title recent.txt
if EXIST goto A
if NOT EXIST recent.txt goto B
:A
set /p RECENT=<recent.txt
%SERVER% Choose your name."
%TEXT% 1 - Choose your own"
%TEXT% 2 - %RECENT%"
%TEXT% 3 - Nothing"
%TEXT% 4 - Clear recent"
SET /P N=:
IF %N%==1 GOTO CYO
IF %N%==2 GOTO RECENTA
IF %N%==3 GOTO RANDOM
IF %N%==4 GOTO CLEARA
GOTO NONAME

:B
%SERVER% Choose your name."
%TEXT% 1 - Choose your own"
echo  2 - Empty"
%TEXT% 3 - Nothing"
%TEXT% 4 - Clear"
SET /P N=:
IF %N%==1 GOTO CYO
IF %N%==2 GOTO RECENTB
IF %N%==3 GOTO RANDOM
IF %N%==4 GOTO CLEARB
GOTO NONAME

:CYO
%SERVER% Type in a name of your choice."
SET /P NAM=:
ECHO %NAM%>recent.txt
GOTO START

:RECENTA
SET NAM=%RECENT%
GOTO START

:RANDOM
SET NAM=Player %RANDOM%
GOTO START

:CLEARA
%SERVER% Clearing...
DEL recent.txt
%SERVER% Done.
GOTO B

:CLEARB
%SERVER% Clearing...
%SERVER% Sorry, recent is empty 
%SERVER% Done.
GOTO B

:RECENTB
%SERVER% Sorry, recent is empty
GOTO B
:START
SET NAME=echo [%NAM%]
%SERVER% Type in your message."

:CHAT
SET /P MESSAGE=:
IF %MESSAGE:~0,1%==/ GOTO COMMAND
%NAME% %MESSAGE%.
GOTO CHAT

:COMMAND
IF %MESSAGE:~1,4%==help GOTO CHELP
GOTO CE

:CE
%SERVER% Error: Command not found."

:CHELP
IF %MESSAGE:~1,9%==help GOTO H1
IF %MESSAGE:~1,9%==help 1 GOTO H1
IF %MESSAGE:~1,9%==help help GOTO CHHELP
GOTO CHAT
:H1
echo =========[HELP Page (1/1)]=========
echo.
echo /help
echo.
echo type /help [command name] for help on that command
echo type /help [page no.] to go to that help page
GOTO CHAT

:CHHELP
echo =========[Help on the "/help" command]========
echo.
echo /help - Gives a list of all commands
echo /help (command name) Gives info on specific commands
GOTO CHAT

:NONAME
%SERVER% Error: Not valid."
pause > null
DEL null
GOTO NAME

:EXIT
%SERVER% BYE"
pause
exit