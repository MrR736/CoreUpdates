@echo off
cd /d %~dp0
wget -q -O winaerotweaker.cmd https://raw.githubusercontent.com/MrR736/CoreAbout/main/Downloads/winaerotweaker.cmd
call winaerotweaker.cmd
del /s /q ".\winaerotweaker.cmd"
7za.exe e winaerotweaker.zip -o"%ProgramData%\PhoenixOS\Core\CoreUpdates\Temp\winaero-tweaker"
