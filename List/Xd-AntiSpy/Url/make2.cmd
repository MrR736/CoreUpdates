@echo off
cd /d %~dp0
setlocal enabledelayedexpansion

:: Find the line containing app-argument
for /f "tokens=*" %%i in ('findstr "app-argument=" input.txt') do (
    set "line=%%i"
)

:: Extract the app-argument value
set "value=!line:*app-argument=!"
set "value=!value:*,=!"
set "value=!value:~0,-1!"

:: Write the value to output.txt
echo !value! > input2.txt
del /q "input.txt"
exit