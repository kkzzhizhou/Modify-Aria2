@echo off
pushd %~dp0App
mode con cols=48 lines=20
Title Aria2ж���� & color 2f
echo.
echo     ����ɾ��������...
echo.
del %appdata%\Microsoft\Windows\Start Menu\Programs\Startup\Aria2.lnk
echo.
echo     ���ڽ�����ؽ���...
echo.
Taskkill /F /IM aria2c.exe
echo.
echo     ����ɾ��·������...
echo.
sed -i "s/%username%/username/g" aria2.conf
echo.
echo     ���س����˳�...
echo.
Pause >NUL