@echo off
cd /d %~dp0
start /WAIT call "%cd%\Temp\winaero-tweaker\Install.cmd"
start Del.cmd
exit