@echo off
set "currentDir=%~dp0"
set "targetFile=%currentDir%run.vbs"
pip install -r "%currentDir%requirements.txt"
set "shortcutName=图书馆管理系统.lnk"
set "iconPath=%currentDir%favicon.ico"
for /f "tokens=2*" %%A in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop') do set "desktopPath=%%B"
setlocal enabledelayedexpansion
set "desktopPath=!desktopPath:%%USERPROFILE%%=%USERPROFILE%!"
endlocal
powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%desktopPath%\%shortcutName%'); $Shortcut.TargetPath = '%targetFile%'; $Shortcut.IconLocation = '%iconPath%'; $Shortcut.Save()"
"%currentDir%run.vbs"