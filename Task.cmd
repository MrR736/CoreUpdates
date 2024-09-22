@echo off
cd /d %~dp0
start /w cmd /c call ".\Temp\InstallMgr.bat"
start Del.cmd
exit