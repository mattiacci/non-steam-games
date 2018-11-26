@echo off
setlocal


set COMMAND="C:\Program Files (x86)\Battle.net\Battle.net.exe" --exec="launch DST2"
set COMMA_SEPARATED_EXES_TO_WATCH=destiny2.exe
set LAUNCHER_EXE=Battle.net.exe


start "" /min ..\src\launcher.bat
