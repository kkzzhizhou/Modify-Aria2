@echo off
pushd %~dp0App
Title 重启Aria2 & color 2f
mode con cols=48 lines=20
echo.
echo 	正在结束相关进程...
echo.
Taskkill /F /IM aria2c.exe
echo.
echo 	正在启动Aria2...
echo.
start "" "start.vbs"
echo.
echo 	按回车键退出...
echo.
pause >NUL

