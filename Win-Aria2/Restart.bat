@echo off
pushd %~dp0App
Title ����Aria2 & color 2f
mode con cols=48 lines=20
echo.
echo 	���ڽ�����ؽ���...
echo.
Taskkill /F /IM aria2c.exe
echo.
echo 	��������Aria2...
echo.
start "" "start.vbs"
echo.
echo 	���س����˳�...
echo.
pause >NUL

