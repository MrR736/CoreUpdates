@echo off
cd /d %~dp0
wget https://github.com/builtbybel/xd-AntiSpy/releases/download/4.12.6/xd-AntiSpy.zip
for /f "tokens=*" %%f in ('dir /b /a-d "*.zip"') do (
    @echo %%f
    @rename "%%f" "Xd-AntiSpy.zip"
)
taskKill /f /im xd-AntiSpy.exe /t
del /s /q "%ProgramData%\PhoenixOS\Extra Tools\Xd-AntiSpy"
7za.exe e Xd-AntiSpy.zip -o"%ProgramData%\PhoenixOS\Extra Tools\Xd-AntiSpy\"
