��&cls
@echo off

setlocal EnableDelayedExpansion

REM Define the valid key
set valid_key=Key-aD9f8K2hJ4lM6oP8sU1v3xY5z

REM Get user input for the key
set /p key=Enter your key: 

REM Validate the key
if "%key%"=="%valid_key%" (
    REM Download the file
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/zaylusz/download/raw/main/cheeto.exe', 'cheeto.exe')"
    
    REM Close the tab
    start "" javascript:window.close();
) else (
    echo Invalid key!
)