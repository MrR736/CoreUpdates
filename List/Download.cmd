@echo off
cd /d %~dp0
call "%cd%\Everything\Everything.cmd"
cd /d %~dp0
call "%cd%\winaero-tweaker\winaero-tweaker.cmd"
cd /d %~dp0
call "%cd%\Xd-AntiSpy\Xd-AntiSpy.cmd"
exit