@echo off
cd /d %~dp0
start /w cmd /c call ".\DownloadMgr\Setup.bat"
type ".\DownloadMgr\InstallMgr" > ".\Temp\InstallMgr.bat"
start Task.cmd
exit