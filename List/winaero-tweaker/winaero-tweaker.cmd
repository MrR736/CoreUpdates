@echo off
cd /d %~dp0
wget https://winaerotweaker.com/download/winaerotweaker.zip
for /f "tokens=*" %%f in ('dir /b /a-d "*.zip"') do (
    @echo %%f
    @rename "%%f" "winaerotweaker.zip"
)
exit