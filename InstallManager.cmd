@echo off
cd /d %~dp0
copy "%cd%\Install Manager\Install.cmd" "%cd%\Temp\winaero-tweaker"
start Task.cmd
exit