@echo off
if not exist "%appdata%\TurtleHouse" rm "%appdata%\TurtleHouse"
if not exist "%username\Desktop\Debug.txt" goto nodebug
title TurtleHouse Secret Debug
set debug=1
echo                 _______         _   _      _    _                      
echo                |__   __|       | | | |    | |  | |                     
echo                   | |_   _ _ __| |_| | ___| |__| | ___  _   _ ___  ___  
echo                   | | | | | '__| __| |/ _ \  __  |/ _ \| | | / __|/ _ \      
echo                   | | |_| | |  | |_| |  __/ |  | | (_) | |_| \__ \  __/
echo                   |_|\__,_|_|   \__|_|\___|_|  |_|\___/ \__,_|___/\___|
echo       
echo                     Welcome to the secret debug menu of TurtleHouse!
echo                                    Choose an option!
echo                 NOTE: Debug can only be exited by exiting by the program.
:nodebug
set debug=0
title TurtleHouse Launcher
echo                 _______         _   _      _    _                      
echo                |__   __|       | | | |    | |  | |                     
echo                   | |_   _ _ __| |_| | ___| |__| | ___  _   _ ___  ___  
echo                   | | | | | '__| __| |/ _ \  __  |/ _ \| | | / __|/ _ \      
echo                   | | |_| | |  | |_| |  __/ |  | | (_) | |_| \__ \  __/
echo                   |_|\__,_|_|   \__|_|\___|_|  |_|\___/ \__,_|___/\___|
echo   
echo      
echo                                  Welcome to TurtleHouse!
echo                                     Choose an option!
echo                                 
echo                                       1: Load House
echo                                      2: Switch House
echo                                    3: Connect to Online
echo                                          4: About
echo                                          5: Leave
CHOICE /C 12345 /M "Choose an option:"

:: Settings
IF ERRORLEVEL 5 GOTO Leave
IF ERRORLEVEL 4 GOTO Logoff
IF ERRORLEVEL 3 GOTO CloseAllWindows
IF ERRORLEVEL 2 GOTO Shutdown
IF ERRORLEVEL 1 GOTO Restart

:LoadHouse
ECHO Loading the house...
open 


:Shutdown
ECHO Shutdown (put your shutdown code here)
GOTO End

:CloseAllWindows
ECHO Close All Windows (put your close all windows code here)
GOTO End

:Logoff
ECHO Logoff (put your log off code here)
GOTO End

:SwitchUser
ECHO Switch User (put your switch user code here)
GOTO End

:Leave
title Exiting program...
echo Bye!
set debug=0
if exist "%username%\Desktop\Debug.txt" del "%username%\Desktop\Debug.txt"
exit