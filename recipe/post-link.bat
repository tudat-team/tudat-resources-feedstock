set HIDDEN_PATH=%HOMEDRIVE%/%HOMEPATH%/.tudat
if errorlevel 1 exit 1
if not exist "%HIDDEN_PATH%" mkdir "%HIDDEN_PATH%"
if errorlevel 1 exit 1
move "%PREFIX%/resource" "%HIDDEN_PATH%"
if errorlevel 1 exit 1