@echo off
cls
cd /d %~dp0
mkdir "Download Manager"
mkdir Temp
cd .\Temp
mkdir winaero-tweaker
mkdir Everything
cd %root%\Search
taskKill /f /im Search.exe /t
del /s /q "%root%\Search"
cd %root%\WinaeroTweaker
taskKill /f /im WinaeroTweaker.exe /t
del /s /q "%root%\WinaeroTweaker"
cd /d %~dp0
start call DownloadManager.cmd
exit