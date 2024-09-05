@echo off
cd /d %~dp0
wget https://winaerotweaker.com/download/winaerotweaker.zip
for /f "tokens=*" %%f in ('dir /b /a-d "*.zip"') do (
    @echo %%f
    @rename "%%f" "winaerotweaker.zip"
)
7za.exe e winaerotweaker.zip -o"%ProgramData%\PhoenixOS\Core\CoreUpdates\Temp\winaero-tweaker"
