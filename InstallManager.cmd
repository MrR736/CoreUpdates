@echo off
cd /d %~dp0
copy "%cd%\Install Manager\Install.cmd" "%cd%\Temp\winaero-tweaker"
copy "%cd%\Install Manager\Install2.cmd" "%cd%\Temp\Everything"
start Task.cmd
exit