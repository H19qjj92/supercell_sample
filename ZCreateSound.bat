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

timeout 1

start %~dp0Runsound.vbs