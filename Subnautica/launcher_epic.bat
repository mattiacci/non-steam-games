@echo off
setlocal


set COMMAND="C:\Windows\explorer.exe" "com.epicgames.launcher://apps/Jaguar?action=launch&silent=true"
set EXES_TO_WATCH="Subnautica.exe"
set LAUNCHER_EXE=""


call ..\src\launcher.bat
