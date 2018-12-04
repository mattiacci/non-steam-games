@echo off
setlocal


set COMMAND="C:\Program Files (x86)\Battle.net\Battle.net.exe" --exec="launch D3"
set EXES_TO_WATCH="Diablo III64.exe","Diablo III.exe"
set LAUNCHER_EXE="Battle.net.exe"


call ..\src\launcher.bat
