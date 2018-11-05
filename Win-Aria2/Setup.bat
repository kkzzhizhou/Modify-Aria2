@echo off
pushd %~dp0App
Title Aria2启动器 & color 2f
mode con cols=48 lines=20
echo.
echo 	正在添加Aria2开机自启动...
Shortcut.exe /T:"%cd%\Start.vbs" /A:C /F:"%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\Aria2.lnk" /W:%cd%
echo.
echo 	正在配置下载路径...
echo.
sed -i "s/username/%username%/g" aria2.conf
echo.
echo 	正在启动Aria2...
echo.
start "" "start.vbs"
echo.
echo 	按回车键退出... 
echo.
pause >NUL