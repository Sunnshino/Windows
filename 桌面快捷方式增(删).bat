@echo off
:continue
echo off
echo "==================输入1回车添加桌面快捷方式================="
echo "	      ==========输入2回车删除桌面快捷方式=========="
echo "	            ====输入exit回车退出,否则循环===="
set /p num=选择你的操作:
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
