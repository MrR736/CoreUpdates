@echo off
cls
cd /d %~dp0
mkdir "Download Manager"
mkdir Temp
cd %cd%\Temp
mkdir winaero-tweaker
mkdir Everything
cd /d %~dp0
start DownloadManager.cmd
exit