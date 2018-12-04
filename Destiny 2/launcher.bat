@echo off
setlocal


set COMMAND="C:\Program Files (x86)\Battle.net\Battle.net.exe" --exec="launch DST2"
set EXES_TO_WATCH="destiny2.exe"
set LAUNCHER_EXE="Battle.net.exe"


call ..\src\launcher.bat
