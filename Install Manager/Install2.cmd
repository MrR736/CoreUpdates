@echo off
cd /d %~dp0
for /f "tokens=*" %%f in ('dir /b /a-d "*.exe"') do (
    @echo %%f
    @rename "%%f" "Search.exe"
)
copy "Search.exe" "%root%\Search"
exit