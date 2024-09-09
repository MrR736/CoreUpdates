@echo off
cd /d %~dp0
wget -q -O Xd-AntiSpy-d.cmd https://raw.githubusercontent.com/MrR736/CoreAbout/main/Downloads/Xd-AntiSpy-d.cmd
call Xd-AntiSpy-d.cmd
del /s /q ".\Xd-AntiSpy-d.cmd"
taskKill /f /im xd-AntiSpy.exe /t
del /s /q "%ProgramData%\PhoenixOS\Extra Tools\Xd-AntiSpy"
7za.exe e Xd-AntiSpy.zip -o"%ProgramData%\PhoenixOS\Extra Tools\Xd-AntiSpy\"
