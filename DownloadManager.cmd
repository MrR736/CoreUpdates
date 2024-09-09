@echo off
cd /d %~dp0
xcopy /s /y "%cd%\List" "%cd%\Download Manager"
start /WAIT call "%cd%\Download Manager\Download.cmd"
start InstallManager.cmd
exit