@echo off
setlocal


set COMMAND="C:\Program Files (x86)\Battle.net\Battle.net.exe" --exec="launch Pro"
set COMMA_SEPARATED_EXES_TO_WATCH=Overwatch.exe
set LAUNCHER_EXE=Battle.net.exe


call ..\src\launcher.bat
