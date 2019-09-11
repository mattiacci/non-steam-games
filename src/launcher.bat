@echo off
setlocal EnableExtensions

..\src\setconsole.exe /hide

if not %LAUNCHER_EXE% == "" (
  for /f "tokens=1 usebackq" %%x in (`tasklist /nh /fi "IMAGENAME eq %LAUNCHER_EXE%"`) do (
    if /i %%~x == %LAUNCHER_EXE% goto WAITOPEN
  )
  start "" %COMMAND%
  timeout /T 3 > NUL
)
:WAITOPEN
set /a RETRIES=3
:RETRYOPEN
start "" %COMMAND%
timeout /T 3 > NUL
for /f "tokens=*" %%x in ('tasklist /nh') do (
  for %%p in (%EXES_TO_WATCH%) do (
    echo %%x | findstr /b /i /c:"%%~p " > nul && goto APPSTARTED
  )
)
SET /a RETRIES-=1
if %RETRIES% GTR 0 (
  goto RETRYOPEN
)
:APPSTARTED
echo Waiting for game to exit...
:WAITEXIT
timeout /T 2 > NUL
for /f "tokens=*" %%x in ('tasklist /nh') do (
  for %%p in (%EXES_TO_WATCH%) do (
    echo %%x | findstr /b /i /c:"%%~p " > nul && goto WAITEXIT
  )
)

endlocal
exit
