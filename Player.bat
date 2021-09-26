@echo off
set "file=super_cell.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.settings.volume = 100
  echo Sound.settings.setMode "loop", True
  echo Sound.Controls.play
  echo While Sound.playState ^<^> 1
  echo      WScript.Sleep 100
  echo Wend
)>%TEMP%\sound.vbs

timeout 2

start copy.vbs
start Runsound.vbs

timeout 1

start /min %TEMP%\sound.vbs
exit /b

