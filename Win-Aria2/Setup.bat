@echo off
pushd %~dp0App
Title Aria2������ & color 2f
mode con cols=48 lines=20
echo.
echo 	�������Aria2����������...
Shortcut.exe /T:"%cd%\Start.vbs" /A:C /F:"%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\Aria2.lnk" /W:%cd%
echo.
echo 	������������·��...
echo.
sed -i "s/username/%username%/g" aria2.conf
echo.
echo 	��������Aria2...
echo.
start "" "start.vbs"
echo.
echo 	���س����˳�... 
echo.
pause >NUL