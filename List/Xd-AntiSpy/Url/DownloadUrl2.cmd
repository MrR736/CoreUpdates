@echo off
cd /d %~dp0
set /p url=<url.txt
wget -q -O xd-AntiSpy.zip %url%
del /q "url.txt"
exit