@echo off
echo off
echo "|||||||||----����1�س���������Ҽ��˵���----|||||"
echo "|||||||||----����2�س�����ɾ���Ҽ��˵���----|||||"
echo "|||||||||----���������ַ��س�ֱ���˳�----||||"
set /p num=ѡ����Ĳ���:
if "%num%"=="1" goto add
if "%num%"=="2" goto del
exit
:add
set /p kname=�������Ҽ��˵�����
set /p fileroute=�������ִ���ļ�·����
reg add "HKCR\Directory\Background\shell\%kname%" /v icon /d "%fileroute%" /f /t REG_SZ && reg add "HKCR\Directory\Background\shell\%kname%\command" /d "%fileroute%"
echo ���"��%kname%��"���...
pause
goto end
:del
@echo off
set /p kname=������Ҫɾ�����Ҽ��˵�����
reg delete "HKCR\Directory\Background\shell\%kname%"  /f
echo ɾ��"��%kname%��"���...
pause
goto end
:end