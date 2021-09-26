@echo off

dir /b /s > get_files.txt

timeout 1

for /f "delims=" %%a in (get_files.txt) DO ( 
  Echo %%a> file_path.txt
)

timeout 1

setlocal ENABLEDELAYEDEXPANSION
set vidx=0
for /F "tokens=*" %%A in (file_path.txt) do (
    SET /A vidx=!vidx! + 1
    set var!vidx!=%%A
)
set var

timeout 2

copy "%~dp0file_path.txt" "%TEMP%"