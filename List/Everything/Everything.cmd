@echo off
cd /d %~dp0
wget https://www.voidtools.com/Everything-1.4.1.1026.x64.zip
for /f "tokens=*" %%f in ('dir /b /a-d "*.zip"') do (
    @echo %%f
    @rename "%%f" "Everything.zip"
)
exit