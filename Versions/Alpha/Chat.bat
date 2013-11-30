@echo off
SETLOCAL DisableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %		%b in (1) do rem"') do (
set "DEL=%%a"
)
SET SERVER=call colorText 0d "[Server]
:NAME
%SERVER% Choose your name"
call colorText 0e "1 - Bob"
call colorText 0e "3 - Fred"
call colorText 0e "4 - Tom"
call colorText 0e "5 - Ian"
call colorText 0e "0 - Nothing"
%SERVER% More names will be added next update."
SET /P N=:
IF %N%==1 GOTO BOB
IF %N%==2 GOTO BILL
IF %N%==3 GOTO FRED
IF %N%==4 GOTO TOM
IF %N%==5 GOTO Ian
IF %N%==0 GOTO RANDOM
GOTO NONAME

:BOB
SET NAM=Bob
GOTO START

:BILL
SET NAM=Bill
GOTO START

:FRED
SET NAM=Fred
GOTO START

:TOM
SET NAM=Tom
GOTO START

:IAN
SET NAM=Ian
GOTO START

:RANDOM
SET NAM=Player %RANDOM%
GOTO START

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