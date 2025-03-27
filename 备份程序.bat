@echo off  
setlocal enabledelayedexpansion  
  
:: ����Դ�ļ��к�Ŀ���ļ���·��  
set "source_folder=%userprofile%\desktop"
set "destination_folder=C:\���ݳ���\�ļ�"  

:: ���Ŀ���ļ����Ƿ���ڣ�����������򴴽�  
if not exist "%destination_folder%" mkdir "%destination_folder%"  
if not exist "C:\���ݳ���\�ļ�\log" mkdir "C:\���ݳ���\�ļ�\log"

:: ��ȡ��ǰ���ڣ����ڴ��������ļ���  
set "backup_date=%date:~-4,4%%date:~-10,2%%date:~-7,2%"  
set "backup_folder=%destination_folder%\Backup_%backup_date%"  
  
:: ���������ļ���  
if not exist "%backup_folder%" mkdir "%backup_folder%"  
  
:: ����Դ�ļ������ݵ������ļ���  
xcopy /E /I /Y "%source_folder%" "%backup_folder%"  
echo Backup is working... >C:\���ݳ���\�ļ�\log\log.log
"C:\Program Files\7-Zip\7z.exe" a -tzip "%source_folder%.zip" "%source_folder%" 

:: ��鸴���Ƿ�ɹ�  
if %errorlevel% equ 0 (  
    echo Backup completed successfully.  
    echo Backup completed successfully. >>C:\���ݳ���\�ļ�\log\log.log
) else (  
    echo Backup failed.  
    echo Backup failed. >>C:\���ݳ���\�ļ�\log\log.log
)  
  
:: ��ͣ�Բ鿴���  
pause  
  
:: �������ر��������ӳ���չ  
endlocal