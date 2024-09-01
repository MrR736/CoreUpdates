@echo off
cd /d %~dp0
for /f "tokens=*" %%f in ('dir /b /a-d "*.exe"') do (
    @echo %%f
    @rename "%%f" "Install.exe"
)
start Install.exe /SP- /VERYSILENT /PORTABLE /DIR="%root%\WinaeroTweaker"
exit