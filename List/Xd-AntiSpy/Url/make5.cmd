@echo off
cd /d %~dp0
setlocal enabledelayedexpansion

:: Read the content from input.txt
set /p version=<input4.txt

:: Remove extra spaces from the version
set "version=!version: =!"

:: Construct the URL using the cleaned version
set "url=https://github.com/builtbybel/xd-AntiSpy/releases/download/%version%xd-AntiSpy.zip"

:: Write the URL to output.txt
echo %url% > url.txt
del /q "input4.txt"
exit
