@echo off
cd /d %~dp0
findstr "app-argument=" latest.txt > input.txt
del /q "latest.txt"
exit
