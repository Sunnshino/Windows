@echo off
echo off
echo "|||||||||----输入1回车进入添加右键菜单栏----|||||"
echo "|||||||||----输入2回车进入删除右键菜单栏----|||||"
echo "|||||||||----输入其他字符回车直接退出----||||"
set /p num=选择你的操作:
if "%num%"=="1" goto add
if "%num%"=="2" goto del
exit
:add
set /p kname=请输入右键菜单名：
set /p fileroute=请输入可执行文件路径：
reg add "HKCR\Directory\Background\shell\%kname%" /v icon /d "%fileroute%" /f /t REG_SZ && reg add "HKCR\Directory\Background\shell\%kname%\command" /d "%fileroute%"
echo 添加"“%kname%”"完成...
pause
goto end
:del
@echo off
set /p kname=请输入要删除的右键菜单名：
reg delete "HKCR\Directory\Background\shell\%kname%"  /f
echo 删除"“%kname%”"完毕...
pause
goto end
:end