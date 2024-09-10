@echo off
cd /d %~dp0
setlocal enabledelayedexpansion

:: Read the input file
set "line="
for /f "usebackq tokens=*" %%A in ("input2.txt") do set "line=%%A"

:: Extract the URL using string manipulation
set "url=!line:*app-argument=!"

:: Remove trailing double quote
set "url=!url:"=!"

:: Write the URL to the output file
echo !url! > input3.txt
del /q "input2.txt"
exit