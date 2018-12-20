@echo off
set test=1
set version=Version 0.1
if not exist "%appdata%\Roaming\TurtleHouse" mkdir "%appdata%\Roaming\TurtleHouse"
if not exist "%username\Desktop\Debug.txt" goto setup
if exist "%username\Desktop\Debug.txt" goto debug
:setup
set FilesHostedOn=https://raw.githubusercontent.com/KcrPL/KcrPL.github.io/master/Patchers_Auto_Update/WiiWare-Patcher
goto nodebug
:debug
title TurtleHouse Sound Test %version%
set test=1
echo.
echo.
echo.
echo        ######## ##     ## ########  ######## ##       ######## ##     ##  #######  ##     ##  ######  ######## 
echo           ##    ##     ## ##     ##    ##    ##       ##       ##     ## ##     ## ##     ## ##    ## ##     
echo           ##    ##     ## ##     ##    ##    ##       ##       ##     ## ##     ## ##     ## ##       ##       
echo           ##    ##     ## ########     ##    ##       ######   ######### ##     ## ##     ##  ######  ######   
echo           ##    ##     ## ##   ##      ##    ##       ##       ##     ## ##     ## ##     ##       ## ##       
echo           ##    ##     ## ##    ##     ##    ##       ##       ##     ## ##     ## ##     ## ##    ## ##    
echo           ##     #######  ##     ##    ##    ######## ######## ##     ##  #######   #######   ######  ########    
echo.
echo.
echo.
echo                                              Welcome to TurtleHouse Debug!
echo                                                    Choose an option!
echo.                            
echo                                                 1: Reset House Directory
echo                                                  2: Reset Announcements
echo                                                  3: Connect to Online
echo                                                        4: About
echo                                                   5: Exit to desktop
echo.
set /p Input=Choose the option: 
:nodebug
set test=0
title TurtleHouse Launcher %version%
echo.
echo.
echo.
echo        ######## ##     ## ########  ######## ##       ######## ##     ##  #######  ##     ##  ######  ######## 
echo           ##    ##     ## ##     ##    ##    ##       ##       ##     ## ##     ## ##     ## ##    ## ##     
echo           ##    ##     ## ##     ##    ##    ##       ##       ##     ## ##     ## ##     ## ##       ##       
echo           ##    ##     ## ########     ##    ##       ######   ######### ##     ## ##     ##  ######  ######   
echo           ##    ##     ## ##   ##      ##    ##       ##       ##     ## ##     ## ##     ##       ## ##       
echo           ##    ##     ## ##    ##     ##    ##       ##       ##     ## ##     ## ##     ## ##    ## ##    
echo           ##     #######  ##     ##    ##    ######## ######## ##     ##  #######   #######   ######  ########    
echo.
echo.
echo.
echo                                                 Welcome to TurtleHouse!
echo                                                    Choose an option!
echo.                            
echo                                                      1: Load House
echo                                                     2: Switch House
echo                                                  3: Connect to Online
echo                                                        4: About
echo                                                   5: Exit to desktop
echo.
set /p Input=Choose the option: 

if %input% 1 goto loadhouse
if %input% 2 goto switchhouse

:loadhouse
ECHO Loading the house...
open "housefiles\%housename%.py"
echo House loaded! If it did not load, check the house name.


:switchhouse
echo Please insert the house name.
echo 

:CloseAllWindows
ECHO Close All Windows (put your close all windows code here)
GOTO End

:Logoff
ECHO Logoff (put your log off code here)
GOTO End

:SwitchUser
ECHO Switch User (put your switch user code here)
GOTO End

:leave
title Exiting program...
echo Bye!
set test=0
exit
