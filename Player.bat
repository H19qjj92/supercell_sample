::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcBaNPmK0OpEZ++Pv4Pq7rEgKaOEwaJaV2LWaQA==
::fBE1pAF6MU+EWHreyHcjLQlHcBaNPmK0OpEZ++Pv4Pq7rEgKaOEwaJaVzLadQA==
::fBE1pAF6MU+EWHreyHcjLQlHcBaNPmK0OpEZ++Pv4Pq7rEgKaOcnfYzOzrucbuIS/iU=
::fBE1pAF6MU+EWHreyHcjLQlHcBaNPmK0OpEZ++Pv4Pq7rEgKaOcnfYzOzrucbvYR+SU=
::fBE1pAF6MU+EWHreyHcjLQlHcBaNPmK0OpEZ++Pv4Pq7rEgKaO4wd5+VzLadQA==
::fBE1pAF6MU+EWHreyHcjLQlHcBaNPmK0OpEZ++Pv4Pq7rEgKaNAqdpzUz7qKbuIS/iU=
::fBE1pAF6MU+EWHreyHcjLQlHcBaNPmK0OpEZ++Pv4Pq7rEgKaNAqdpzUz7qKbvYR+SU=
::fBE1pAF6MU+EWHreyHcjLQlHcBaNPmK0OpEZ++Pv4Pq7rEgKaPEqaIrJ5beLLOxd51W3FQ==
::fBE1pAF6MU+EWHreyHcjLQlHcBaNPmK0OpEZ++Pv4Pq7rEgKaNgcaorazrG9L/Ud7gvmdIJN
::fBE1pAF6MU+EWHreyHcjLQlHcBaNPmK0OpEZ++Pv4Pq7rEgKaNgFW53e26CLE+8G5EGqY5Q+tg==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFAlbTg2MAE+/Fb4I5/jH+/iOsgMUV+1f
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsHAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIjPQtRXgeHMGfa
::eg0/rx1wNQPfEVWB+kM9LVsJDBeXLG6oBbAQ5Ig=
::fBEirQZwNQPfEVWB+kM9LVsJDBeXLG6oBbAQ5Ig=
::cRolqwZ3JBvQF1fEqQIDIB4UXxGBNyuuDrARqOzp7u2IrA0fVe4za8/Z06CNKKA6qkPhcJpt2nNRnYsPCRdUHg==
::dhA7uBVwLU+EWGqN5mYiIR1ASRbBbDLjX9U=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAlbTg2MAE+/Fb4I5/jH/P+Xp18eUe4zNorD39Q=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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

