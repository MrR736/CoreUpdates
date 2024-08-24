@echo off
cd /d %~dp0
ren everything.exe Search.exe
copy "Search.exe" "%root%\Search"
exit
