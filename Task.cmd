@echo off
cd /d %~dp0
start /WAIT call "%cd%\Temp\winaero-tweaker\Install.cmd"
start /WAIT call "%cd%\Temp\Everything\Install2.cmd"
start Del.cmd
exit