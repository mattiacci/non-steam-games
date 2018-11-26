@echo off
setlocal


set COMMAND="C:\Program Files (x86)\Battle.net\Battle.net.exe" --exec="launch VIPR"
set COMMA_SEPARATED_EXES_TO_WATCH=BlackOps4.exe
set LAUNCHER_EXE=Battle.net.exe


start "" /min ..\src\launcher.bat
