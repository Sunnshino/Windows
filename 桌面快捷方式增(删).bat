@echo off
:continue
echo off
echo "==================����1�س���������ݷ�ʽ================="
echo "	      ==========����2�س�ɾ�������ݷ�ʽ=========="
echo "	            ====����exit�س��˳�,����ѭ��===="
set /p num=ѡ����Ĳ���:
if "%num%"=="1" goto add
if "%num%"=="2" goto del
if "%num%"=="exit" goto end
exit
:add
reg add "HKCR\lnkfile" /v IsShortcut /f && taskkill /f /im explorer.exe && start explorer.exe
goto continue
:del
@echo off
reg delete "HKCR\lnkfile" /v IsShortcut /f && taskkill /f /im explorer.exe && start explorer.exe
goto continue
:end
