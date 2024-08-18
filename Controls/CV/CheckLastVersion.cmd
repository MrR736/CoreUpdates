@echo off
cd /d %~dp0
wget https://raw.githubusercontent.com/MrR736/CoreUpdates/main/Controls/CV.cmd
cd /d %~dp0
timeout /t 5 /nobreak
type msv.txt >> TCV.cmd