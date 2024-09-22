@echo off
cd /d %~dp0

set /p InstallPath=<InstallPath

for /f "tokens=*" %%f in ('dir /b /a-d "*.exe"') do (
    @echo %%f
    @rename "%%f" "Install.exe"
)
start /WAIT Install.exe /SP- /VERYSILENT /PORTABLE /DIR="%InstallPath%"
exit