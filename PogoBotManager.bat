@echo off
color 0a
title Simple Pokemon Go Bot Manager
echo Welcome to the Simple Pokemon Go Bot Manager.
echo PLEASE READ README.TXT FIRST BEFORE USING THIS PROGRAM.
echo.
echo ///  WARNING!  \\\
echo This program does not have input validation because I suck at programming
echo So make sure you type your inputs correctly or you will need to start over.
echo.
:start
set /p in=[Y] Continue / [N] Exit : 
if %in% == y goto yes
if %in% == n goto no
:yes
echo.
echo If you don't know the answer to the following question, just press N.
set /p aa=Are you using a Necrobot config with sniping? (not mass XP) [Y] Yes / [N] No :
if %aa% == y goto snipe
if %aa% == n goto necro
cls
:snipe
call config.bat
start %ppath%
echo.
:necro
call config.bat
start %npath%
echo.
:confirm
set /p conf=Did the programs start? [Y] Yes / [N] No :  
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
start %qpath%
set /p fin=Did QuickSpin correctly start? [Y] Yes / [N] No : 
if %fin% == y goto done
if %fin% == n goto retry
:retry
cls
echo Recheck your config.bat and make sure you have correctly filled out the necessary paths.
echo This program will now exit.
echo.
pause
exit
:no
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