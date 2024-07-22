@echo off
setlocal enabledelayedexpansion

set "filename=main.exe"

if not exist %filename% (
    echo cant locate file > error_log.txt
    exit /b 1
)

%filename% -b all -f json --dir results --zip %*

endlocal