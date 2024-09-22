@echo off
cd /d %~dp0

set /p P=<Path.txt

"%p%\wget.exe" -q -O latest.txt "https://github.com/builtbybel/xd-AntiSpy/releases/latest"
findstr "app-argument=" latest.txt > input.txt
del /q "latest.txt"

setlocal enabledelayedexpansion

for /f "tokens=*" %%i in ('findstr "app-argument=" input.txt') do (
    set "line=%%i"
)

set "value=!line:*app-argument=!"
set "value=!value:*,=!"
set "value=!value:~0,-1!"

echo !value! > input2.txt
del /q "input.txt"

set "line="
for /f "usebackq tokens=*" %%A in ("input2.txt") do set "line=%%A"

set "url=!line:*app-argument=!"

set "url=!url:"=!"

echo !url! > input3.txt
del /q "input2.txt"

setlocal enabledelayedexpansion

set "line="
for /f "usebackq tokens=*" %%A in ("input3.txt") do set "line=%%A"

set "version=!line:*tag/=!"

set "version=!version: />=!"

echo !version! > input4.txt
del /q "input3.txt"

setlocal enabledelayedexpansion

set /p version=<input4.txt

set "version=!version: =!"

set "url=https://github.com/builtbybel/xd-AntiSpy/releases/download/%version%xd-AntiSpy.zip"

echo %url% > url.txt
del /q "input4.txt"


set /p url=<url.txt
"%p%\wget.exe" -q -O "%cd%\xd-AntiSpy.zip" %url%
del /q "url.txt"
del /q ".wget-hsts"