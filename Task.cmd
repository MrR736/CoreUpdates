@echo off
cd /d %~dp0
cd %cd%\Temp\winaero-tweaker
type WinaeroTweakerPortable.txt >> Install.cmd
start Install.cmd
cd /d %~dp0
cd %cd%\Temp\Everything
start Install2.cmd
cd /d %~dp0
timeout /t 20 /nobreak
start Del.cmd
exit