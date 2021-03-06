@echo off
color 0a
title Simple Pokemon Go Bot Manager
echo WARNING: BOT AT YOUR OWN RISK
echo AS OF 8/12/16
echo SEE README.TXT FOR MORE INFO
timeout /t 5
echo Welcome to the Simple Pokemon Go Bot Manager.
echo PLEASE READ README.TXT FIRST BEFORE USING THIS PROGRAM.
echo.
echo THIS PROGRAM PULLS DATA FROM CONFIG.BAT
echo MAKE SURE YOU HAVE FILLED OUT EVERYTHING REQUIRED
echo.
set /p sv=Begin? [Y]/[N]: 
if %sv% == y goto start
if %sv% == n goto no
:start
cls
echo One moment, loading your settings from the config file...
call config.bat
if %ac% == 1 goto 1a
if %ac% == 2 goto 2a
if %ac% == 3 goto 3a
if %ac% == 4 goto 4a
if %ac% == 5 goto 5a
:1a
call config.bat
if %sn% == y goto 1y
if %sn% == n goto 1fs
:1y
call config.bat
start %ppath%\PogoLocationFeeder.GUI.exe
:1fs
call config.bat
start %npath%\Necrobot.exe
goto confirm
:2a
call config.bat
if %sn% == y goto 2y
if %sn% == n goto 2fs
:2y
call config.bat
start %ppath%\PogoLocationFeeder.GUI.exe
:2fs
call config.bat
start %npath%\Necrobot.exe && start %npath2%\Necrobot.exe
goto confirm
:3a
call config.bat
if %sn% == y goto 3y
if %sn% == n goto 3fs
:3y
call config.bat
start %ppath%\PogoLocationFeeder.GUI.exe
:3fs
call config.bat
start %npath%\Necrobot.exe && start %npath2%\Necrobot.exe && start %npath3%\Necrobot.exe
goto confirm
:4a
call config.bat
if %sn% == y goto 4y
if %sn% == n goto 4fs
:4y
call config.bat
start %ppath%\PogoLocationFeeder.GUI.exe
:4fs
call config.bat
start %npath%\Necrobot.exe && start %npath2%\Necrobot.exe && start %npath3%\Necrobot.exe && start %npath4%\Necrobot.exe
goto confirm
:5a
call config.bat
if %sn% == y goto 5y
if %sn% == n goto 5fs
:5y
call config.bat
start %ppath%\PogoLocationFeeder.GUI.exe
:5fs
call config.bat
start %npath%\Necrobot.exe && start %npath2%\Necrobot.exe && start %npath3%\Necrobot.exe && start %npath4%\Necrobot.exe && start %npath5%\Necrobot.exe
goto confirm
:confirm
cls
set /p conf=Did the necessary program(s) start? [Y]/[N]:  
if %conf% == y goto qs
if %conf% == n goto no
:qs
cls
echo When you are finished botting and have closed all bots, press any key to continue.
echo This program will then start QuickSpin so that you are not softbanned when you play from a different location.
echo.
echo \\\\ FOR NOW, JUST LEAVE THIS BATCH FILE MINIMIZED. ////
echo.
timeout /t -1
call config.bat
if %ac% == 1 start %qpath%\QuickSpin.exe
if %ac% == 2 start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe
if %ac% == 3 start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe
if %ac% == 4 start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe
if %ac% == 5 start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe && start %qpath%\QuickSpin.exe
echo.
set /p qsc=Did QuickSpin(s) correctly start? [Y]/[N]: 
if %qsc% == y goto done
if %qsc% == n goto no
:done
cls
echo You have finished! Wait for QuickSpin to complete,
echo then you can log in from your phone/emulator/other device.
echo Just follow QuickSpin's on-screen prompts.
echo.
echo Have fun! This program will now exit.
pause
exit
:no
cls
echo Come back once you've filled out config.bat correctly
echo This program will now exit.
echo.
pause
exit
