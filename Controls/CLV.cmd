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
for /F "usebackq skip=2 delims=" %%I in (".\CV.cmd") do if not defined cv1 set "cv1=%%~I"
echo %cv1% >>".\CV\Temp\TCV.cmd"
cls
timeout /t 3 /nobreak
cd /d %~dp0
cd .\CV
for /F "usebackq skip=1 delims=" %%I in (".\Temp\CV.cmd") do if not defined cv2 set "cv2=%%~I"
echo %cv2% >>".\Temp\TCV.cmd"
cls
cd /d %~dp0
cd .\CV
type lv.txt >> ".\Temp\TCV.cmd"
start ExtraDel.cmd
cd /d %~dp0
for /F "usebackq skip=3 delims=" %%I in (".\CV.cmd") do if not defined cv3 set "cv3=%%~I"
echo %cv3% >>".\CV\Temp\TCV.cmd"
cls
.\CV\Temp\TCV.cmd
@echo on
