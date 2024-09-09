@echo off
cd /d %~dp0
mkdir "Download Manager"
mkdir Temp
cd .\Temp
mkdir winaero-tweaker
mkdir Everything
taskKill /f /im Search.exe /t
taskKill /f /im WinaeroTweakerHelper.exe /t
taskKill /f /im Elevator.exe /t
taskKill /f /im no_tab_explorer.exe /t
taskKill /f /im WinaeroTweaker.exe /t
del /s /q "%ProgramData%\PhoenixOS\WinaeroTweaker"
del /s /q "%ProgramData%\PhoenixOS\Search"
cd /d %~dp0
start call DownloadManager.cmd
exit
