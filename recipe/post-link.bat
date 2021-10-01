@REM set hidden path for tudat
set HIDDEN_PATH=%HOMEDRIVE%/%HOMEPATH%/.tudat
set TEMP_PATH=./tmp/

@REM Set resource git URL and REV
set RESOURCE_GIT_URL="https://github.com/tudat-team/tudat-resources.git"

@REM Read whole variable of git_rev.txt file into variable
set RESOURCE_GIT_REV="%GIT_FULL_HASH%"

echo "RESOURCE_GIT_REV: %RESOURCE_GIT_REV%"

@REM Create destination hidden folder
if not exist "%HIDDEN_PATH%" mkdir "%HIDDEN_PATH%"
if errorlevel 1 exit 1

@REM Create destination resource folder
if not exist "%HIDDEN_PATH%/resource" mkdir "%HIDDEN_PATH%/resource"
if errorlevel 1 exit 1

@REM debug
echo "PREFIX: %PREFIX%"

@REM Create temp  folder
if not exist "%TEMP_PATH%" mkdir "%TEMP_PATH%"
if errorlevel 1 exit 1

@REM Clone resource git repository
git clone --depth 1 --branch %RESOURCE_GIT_REV% %RESOURCE_GIT_URL% "%TEMP_PATH%"    

@REM attempt to copy resources to home folder
xcopy "%TEMP_PATH%resource" "%HIDDEN_PATH%/resource" /s /e /y
if errorlevel 1 exit 1

