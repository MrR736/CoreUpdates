@echo off
cd /d %~dp0
set /p p=<Path.txt
taskKill /f /im xd-AntiSpy.exe /t
del /s /q "%ProgramData%\PhoenixOS\Extra Tools\Xd-AntiSpy"
start /w cmd.exe /c call "MakeUrl.bat"
%p%\7z.exe e Xd-AntiSpy.zip -o"%ProgramData%\PhoenixOS\Extra Tools\Xd-AntiSpy\"
del /s /q ".\Url\Path.txt"