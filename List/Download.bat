@echo off
cd /d %~dp0
for /f "tokens=*" %%a in ('dir /b /ad') do (
    @echo %cd%> ".\%%a\Path.txt"
)
for /f "tokens=*" %%f in ('dir /s /b /a-d "*.cmd"') do (
    @start /w cmd /c call "%%f"
)
exit