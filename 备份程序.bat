@echo off  
setlocal enabledelayedexpansion  
  
:: 设置源文件夹和目标文件夹路径  
set "source_folder=%userprofile%\desktop"
set "destination_folder=C:\备份程序\文件"  

:: 检查目标文件夹是否存在，如果不存在则创建  
if not exist "%destination_folder%" mkdir "%destination_folder%"  
if not exist "C:\备份程序\文件\log" mkdir "C:\备份程序\文件\log"

:: 获取当前日期，用于创建备份文件夹  
set "backup_date=%date:~-4,4%%date:~-10,2%%date:~-7,2%"  
set "backup_folder=%destination_folder%\Backup_%backup_date%"  
  
:: 创建备份文件夹  
if not exist "%backup_folder%" mkdir "%backup_folder%"  
  
:: 复制源文件夹内容到备份文件夹  
xcopy /E /I /Y "%source_folder%" "%backup_folder%"  
echo Backup is working... >C:\备份程序\文件\log\log.log
"C:\Program Files\7-Zip\7z.exe" a -tzip "%source_folder%.zip" "%source_folder%" 

:: 检查复制是否成功  
if %errorlevel% equ 0 (  
    echo Backup completed successfully.  
    echo Backup completed successfully. >>C:\备份程序\文件\log\log.log
) else (  
    echo Backup failed.  
    echo Backup failed. >>C:\备份程序\文件\log\log.log
)  
  
:: 暂停以查看结果  
pause  
  
:: 结束本地变量启用延迟扩展  
endlocal