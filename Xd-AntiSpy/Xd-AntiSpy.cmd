@echo off
cd /d %~dp0
start /WAIT cmd.exe /c call ".\Url\DownloadUrl.cmd"
start /WAIT cmd.exe /c call ".\Url\make.cmd"
start /WAIT cmd.exe /c call ".\Url\make2.cmd"
start /WAIT cmd.exe /c call ".\Url\make3.cmd"
start /WAIT cmd.exe /c call ".\Url\make4.cmd"
start /WAIT cmd.exe /c call ".\Url\make5.cmd"
start /WAIT cmd.exe /c call ".\Url\DownloadUrl2.cmd"
move ".\Url\xd-AntiSpy.zip" ".\"
::install
taskKill /f /im xd-AntiSpy.exe /t
del /s /q "%ProgramData%\PhoenixOS\Extra Tools\Xd-AntiSpy"
7za.exe e Xd-AntiSpy.zip -o"%ProgramData%\PhoenixOS\Extra Tools\Xd-AntiSpy\"
exit