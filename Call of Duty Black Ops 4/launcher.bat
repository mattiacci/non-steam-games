@echo off
setlocal


set COMMAND="C:\Program Files (x86)\Battle.net\Battle.net.exe" --exec="launch VIPR"
set EXES_TO_WATCH="BlackOps4.exe"
set LAUNCHER_EXE="Battle.net.exe"


call ..\src\launcher.bat
