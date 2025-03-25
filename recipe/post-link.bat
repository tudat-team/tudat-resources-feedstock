@REM set hidden path for tudat
set HIDDEN_PATH=%HOMEDRIVE%/%HOMEPATH%/.tudat
set TEMP_PATH=./tmp/

@REM Set resource git URL and REV
set RESOURCE_GIT_URL="https://github.com/tudat-team/tudat-resources.git"

@REM Read whole file of git_rev.txt file into variable
set RESOURCE_GIT_REV="c1306808bc98614b717599627e7b22e0a20054eb"

@REM Debugging 42
echo "RESOURCE_GIT_REV: %RESOURCE_GIT_REV%"
echo "RECIPE_DIR      : %RECIPLE_DIR%"
dir /b /a-d

@REM Create destination hidden folder
if not exist "%HIDDEN_PATH%" mkdir "%HIDDEN_PATH%"
if errorlevel 1 exit 1

@REM Create destination resource folder
if not exist "%HIDDEN_PATH%/resource" mkdir "%HIDDEN_PATH%/resource"
if errorlevel 1 exit 1

@REM Create temp  folder
if not exist "%TEMP_PATH%" mkdir "%TEMP_PATH%"
if errorlevel 1 exit 1
cd "%TEMP_PATH%"

@REM We don't want the main branch, so we initiate git repo
@REM and checkout the target sha1
git init
git remote add -f origin "%RESOURCE_GIT_URL%"
git fetch origin "%RESOURCE_GIT_REV%"
git reset --hard FETCH_HEAD

@REM attempt to copy resources to home folder
xcopy "/resource" "%HIDDEN_PATH%/resource" /s /e /y
if errorlevel 1 exit 1

@REM Unpack the content and place it in resource/
tar -xvf resource.tar.gz

@REM DEBUG: Check if directory %HIDDEN_PATH%/.tudat/resource exists 
set RESOURCE_PATH=%HIDDEN_PATH%/resource
if exist "%RESOURCE_PATH%" echo "Directory %RESOURCE_PATH% exists"

@REM [Optional] Delete the original tar file
del .\resource.tar.gz

@REM Define target directory in Conda environment
set "TARGET_DIR=%CONDA_PREFIX%\share\external-repo"

@REM Create directory if it doesn't exist
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"
cd /d "%TARGET_DIR%"

@REM Clone repository using git
git clone https://github.com/NASA-PDS/PyTrk234.git .

@REM Install the cloned repository with pip
pip install .
