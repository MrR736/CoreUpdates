@echo off
cls
cd /d %~dp0
copy "%cd%\List\Download.cmd" "%cd%\Download Manager"
start call "%cd%\Download Manager\Download.cmd"
timeout /t 15 /nobreak
ExtractManager.cmd
