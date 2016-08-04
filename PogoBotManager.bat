@echo off
color 0a
title Simple Pokemon Go Bot Manager
echo Welcome to the Simple Pokemon Go Bot Manager.
echo PLEASE READ README.TXT FIRST BEFORE USING THIS PROGRAM.
echo.
echo ///  WARNING!  \\\
echo This program does not have input validation (yet)
echo So make sure you type your inputs correctly or you will need to start over.
echo.
:start
set /p in=[1] 1 accounts [2] Multiple accounts (2-5) [3] Exit : 
if %in% == 1 goto one
if %in% == 2 goto two
if %in% == 3 goto three
:one
cls
echo If you don't know the answer to the following question, just press N.
set /p aa=Are you using a Necrobot config with sniping? (not mass XP) [Y] Yes / [N] No : 
if %aa% == y goto snipe
if %aa% == n goto next
:two
echo If you don't know the answer to the following question, just press N.
set /p lol=Is at least one account going to use a sniping config? [Y] Yes / [N] No : 
if %lol% == y goto snipe
if %lol% == n goto next
:snipe
call config.bat
start %ppath%\PogoLocationFeeder.GUI.exe
:next
cls
set /p an=How many accounts are you going to bot? ([1],[2],[3],[4],[5]): 
if %an% == 1 goto 1a 
if %an% == 2 goto 2a
if %an% == 3 goto 3a
if %an% == 4 goto 4a
if %an% == 5 goto 5a
:1a
call config.bat
start %npath%\Necrobot.exe
goto confirm
:2a
call config.bat
start %npath%\Necrobot.exe && start %npath2%\Necrobot.exe
goto confirm
:3a
call config.bat
start %npath%\Necrobot.exe && start %npath2%\Necrobot.exe && start %npath3%\Necrobot.exe
goto confirm
:4a
call config.bat
start %npath%\Necrobot.exe && start %npath2%\Necrobot.exe && start %npath3%\Necrobot.exe && start %npath4%\Necrobot.exe
goto confirm
:5a
call config.bat
start %npath%\Necrobot.exe && start %npath2%\Necrobot.exe && start %npath3%\Necrobot.exe && start %npath4%\Necrobot.exe && start %npath5%\Necrobot.exe
goto confirm
:confirm
set /p conf=Did the necessary program(s) start? [Y] Yes / [N] No : 
if %conf% == y goto final
if %conf% == n goto retry
:final
cls
echo Congratulations, everything is working!
echo When you are finished botting and have closed all bots, press any key to continue.
echo This program will then start QuickSpin so that you are not softbanned.
echo.
echo \\\\ FOR NOW, JUST LEAVE THIS BATCH FILE MINIMIZED. ////
echo.
set /p var=Ready?: 
echo.
:quickspin
call config.bat
if %an% == 1 start %qpath%\QuickSpin.exe
if %an% == 2 start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe
if %an% == 3 start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe
if %an% == 4 start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe
if %an% == 5 start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe
set /p fin=Did QuickSpin(s) correctly start? [Y] Yes / [N] No : 
if %fin% == y goto done
if %fin% == n goto retry
:retry
cls
echo Recheck your config.bat and make sure you have correctly filled out the necessary paths.
echo This program will now exit.
echo.
pause
exit
:three
cls
echo Please restart this program when you have installed the necessary programs.
pause
exit
:done
cls
echo You have finished! Wait for QuickSpin to complete,
echo then you can log in from your phone/emulator/other device.
echo Just follow QuickSpin's on-screen prompts.
echo.
echo Good luck!
echo.
pause
exit
