@echo off
cls
cd /d %~dp0
mkdir "Download Manager"
mkdir Temp
cd .\Temp
mkdir winaero-tweaker
mkdir Everything
cd /d %~dp0
del /s /q "%root%\Search"
del /s /q "%root%\WinaeroTweaker"
start DownloadManager.cmd
exit