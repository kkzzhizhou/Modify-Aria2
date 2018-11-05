@echo off
pushd %~dp0App
mode con cols=48 lines=20
Title Aria2卸载器 & color 2f
echo.
echo     正在删除启动项...
echo.
del %appdata%\Microsoft\Windows\Start Menu\Programs\Startup\Aria2.lnk
echo.
echo     正在结束相关进程...
echo.
Taskkill /F /IM aria2c.exe
echo.
echo     正在删除路径配置...
echo.
sed -i "s/%username%/username/g" aria2.conf
echo.
echo     按回车键退出...
echo.
Pause >NUL