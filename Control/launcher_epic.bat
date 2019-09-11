@echo off
setlocal


set COMMAND="C:\Windows\explorer.exe" "com.epicgames.launcher://apps/Calluna?action=launch&silent=true"
set EXES_TO_WATCH="Control.exe","Control_DX11.exe","Control_DX12.exe"
set LAUNCHER_EXE=""


call ..\src\launcher.bat
