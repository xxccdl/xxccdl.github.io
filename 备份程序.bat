@echo off  
setlocal enabledelayedexpansion  

:: 提示用户输入源文件夹路径
set /p source_folder="请输入源文件夹路径: "

:: 提示用户输入目标文件夹路径
set /p destination_folder="请输入目标文件夹路径: "

:: 检查路径是否有效
if not exist "%source_folder%" (
    echo 源文件夹路径无效，请重新运行程序并输入有效路径.
    pause
    goto :eof
)
if not exist "%destination_folder%" (
    echo 目标文件夹路径无效，请重新运行程序并输入有效路径.
    pause
    goto :eof
)

:: 创建目标文件夹和日志文件夹
if not exist "%destination_folder%" mkdir "%destination_folder%"
if not exist "%destination_folder%\log" mkdir "%destination_folder%\log"

:: 获取当前日期，用于创建备份文件夹
set "backup_date=%date:~-4,4%%date:~-10,2%%date:~-7,2%"
set "backup_folder=%destination_folder%\Backup_%backup_date%"

:: 创建备份文件夹
if not exist "%backup_folder%" mkdir "%backup_folder%"

:: 复制源文件夹内容到备份文件夹
xcopy /E /I /Y "%source_folder%" "%backup_folder%"
echo Backup is working... >"%destination_folder%\log\log.log"
"C:\Program Files\7-Zip\7z.exe" a -tzip "%backup_folder%\Backup_%backup_date%.zip" "%backup_folder%"

:: 检查备份是否成功
if %errorlevel% equ 0 (
    echo Backup completed successfully.
    echo Backup completed successfully. >>"%destination_folder%\log\log.log"
) else (
    echo Backup failed.
    echo Backup failed. >>"%destination_folder%\log\log.log"
)

:: 暂停以查看结果
pause

:: 结束并关闭延迟扩展
endlocal
