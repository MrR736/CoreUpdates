@echo off
cd /d %~dp0
setlocal enabledelayedexpansion

:: Read the input file
set "line="
for /f "usebackq tokens=*" %%A in ("input3.txt") do set "line=%%A"

:: Extract the version number from the URL
:: Remove everything before the version number
set "version=!line:*tag/=!"

:: Remove trailing characters after the version number
set "version=!version: />=!"

:: Write the version number to the output file
echo !version! > input4.txt
del /q "input3.txt"
exit