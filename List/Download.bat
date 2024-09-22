@echo off
cd /d %~dp0
echo %cd%> ".\Xd-AntiSpy\Path.txt"
echo %cd%> ".\Everything\Path.txt"
echo %cd%> ".\winaero-tweaker\Path.txt"
start /w cmd /c call "%cd%\Everything\Everything.cmd"
start /w cmd /c call "%cd%\winaero-tweaker\winaero-tweaker.cmd"
start /w cmd /c call "%cd%\Xd-AntiSpy\Xd-AntiSpy.cmd"
exit