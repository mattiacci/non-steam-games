@echo off
setlocal EnableExtensions

..\src\setconsole.exe /minimize

if not %LAUNCHER_EXE% == "" (
  for /f "tokens=1 usebackq" %%x in (`tasklist /nh /fi "IMAGENAME eq %LAUNCHER_EXE%"`) do (
    if /i %%~x == %LAUNCHER_EXE% goto LAUNCHER
  )
  start "" %COMMAND%
  timeout /T 1 > NUL
)
:LAUNCHER
start "" %COMMAND%
timeout /T 1 > NUL
for %%p in (%EXES_TO_WATCH%) do (
  for /f "tokens=1 usebackq" %%x in (`tasklist /nh /fi "IMAGENAME eq %%~p"`) do (
    if /i %%~x == %%~p goto WAITCLOS
  )
)
goto LAUNCHER
:WAITCLOS
echo Waiting for %EXES_TO_WATCH% to exit...
:CHECK
timeout /T 1 > NUL
for %%p in (%EXES_TO_WATCH%) do (
  for /f "tokens=1 usebackq" %%x in (`tasklist /nh /fi "IMAGENAME eq %%~p"`) do (
    if /i %%~x == %%~p goto CHECK
  )
)

endlocal
exit
