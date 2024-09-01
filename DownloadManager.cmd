@echo off
cls
cd /d %~dp0
xcopy /s /y "%cd%\List" "%cd%\Download Manager"
call "%cd%\Download Manager\Download.cmd"
cd /d %~dp0
start InstallManager.cmd
exit