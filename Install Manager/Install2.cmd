@echo off
cd /d %~dp0
ren everything.exe Search.exe
copy "Search.exe" "%ProgramData%\PhoenixOS\Search"
exit
