@echo off
cls
cd /d %~dp0
copy "%cd%\List\Download.cmd" "%cd%\Download Manager"
cd "%cd%\Download Manager"
start Download.cmd
cd /d %~dp0
timeout /t 15 /nobreak
ExtractManager.cmd
