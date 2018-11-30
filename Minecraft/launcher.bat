@echo off
setlocal


set COMMAND="C:\Windows\explorer.exe" "shell:AppsFolder\Microsoft.MinecraftUWP_8wekyb3d8bbwe!App"
set COMMA_SEPARATED_EXES_TO_WATCH=Minecraft.Windows.exe
set LAUNCHER_EXE=""


call ..\src\launcher.bat
