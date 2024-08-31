@echo off
cd /d %~dp0
start call "%cd%\Temp\winaero-tweaker\Install.cmd"
start call "%cd%\Temp\Everything\Install2.cmd"
timeout /t 20 /nobreak
start Del.cmd
exit