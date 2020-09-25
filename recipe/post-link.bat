:: set hidden path
set HIDDEN_PATH=%HOMEDRIVE%/%HOMEPATH%/.tudat

:: create destination hidden folder
if not exist "%HIDDEN_PATH%" mkdir "%HIDDEN_PATH%"
if errorlevel 1 exit 1

:: create destination resource folder
if not exist "%HIDDEN_PATH%/resource" mkdir "%HIDDEN_PATH%/resource"
if errorlevel 1 exit 1

:: debug
echo "PREFIX: %PREFIX%"

:: attempt to copy resources to home folder
xcopy "%PREFIX%/Library/resource" "%HIDDEN_PATH%/resource" /s /e
if errorlevel 1 exit 1

