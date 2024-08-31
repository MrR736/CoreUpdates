@echo off
cls
cd /d %~dp0
xcopy /s /y "%cd%\List" "%cd%\Download Manager"
cls
start call "%cd%\Download Manager\Download.cmd"
timeout /t 15 /nobreak
ExtractManager.cmd
