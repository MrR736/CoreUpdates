@echo off
cd /d %~dp0
cd .\CV
mkdir Temp
start CheckLastVersion.cmd
cls
cd /d %~dp0
copy ".\BCmd\TCV.cmd" ".\CV\Temp"
for /F "usebackq skip=1 delims=" %%I in (".\CV.cmd") do if not defined cv set "cv=%%~I"
echo %cv% >>".\CV\Temp\TCV.cmd"
cls
cd /d %~dp0
for /F "usebackq skip=3 delims=" %%I in (".\CV.cmd") do if not defined cv1 set "cv1=%%~I"
echo %cv1% >>".\CV\Temp\TCV.cmd"
cls
timeout /t 8 /nobreak
cd /d %~dp0
cd .\CV
for /F "usebackq skip=1 delims=" %%I in (".\Temp\CV.cmd") do if not defined cv2 set "cv2=%%~I"
echo %cv2% >>".\Temp\TCV.cmd"
cls
cd /d %~dp0
cd .\CV
type lv.txt >> ".\Temp\TCV.cmd"
start ExtraDel.cmd
cls
cd /d %~dp0
.\CV\Temp\TCV.cmd
@echo on