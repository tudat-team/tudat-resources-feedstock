:: *********************************************************** 
::
:: This script downloads the raw data files distributed manually as release on 
:: the tudat-resources Github repository and places them in $HOME/.tudat/resource
:: directory on the host machine. 

:: This script is written precisely to download the data files distributed 
:: directly as GitHub releases, because in the future, Github would block pushing
:: data files > 100 MB to the repository, so they need to be distributed as
:: releases-only. 
:: In order for this script to function correctly, upload only a single zip file
:: with the name <resource> containing all the sub directories with the data 
:: files, i.e., the resource/ in master, or the data/ in develop.
::
:: The script is run automatically by conda as the last step in the installation
:: process of the conda package tudat-resources on the host machine.
:: 
:: **********************************************************

@REM DEBUG
echo "HOMEDRIVE is %HOMEDRIVE%"
echo "HOMEPATH is %HOMEPATH%"

@REM set hidden path for tudat
set HIDDEN_PATH=%HOMEDRIVE%/%HOMEPATH%/.tudat
set TEMP_PATH=./tmp/

@REM DEBUG
echo "HIDDEN_PATH is %HIDDEN_PATH%"

@REM Set package version
set PKG_VERSION=v2.1

@REM Set resource git URL and REV
set RESOURCE_GITHUB_URL="https://github.com/tudat-team/tudat-resources/releases/download/%PKG_VERSION%/resource.tar.gz"

@REM Create destination hidden folder
if not exist "%HIDDEN_PATH%" mkdir "%HIDDEN_PATH%"
if errorlevel 1 exit 1

@REM DEBUG 
if exist "%HIDDEN_PATH%" echo "Directory %HIDDEN_PATH% exists"

@REM Go to target location
cd /d %HIDDEN_PATH%

@REM DEBUG
echo "Current directory is %CD%"

@REM Fetch the Github release containing the raw data files
curl -JLO %RESOURCE_GITHUB_URL%

@REM Unpack the content and place it in resource/
tar -xvf resource.tar.gz

@REM DEBUG: Check if directory %HIDDEN_PATH%/.tudat/resource exists 
set RESOURCE_PATH=%HIDDEN_PATH%/resource
if exist "%RESOURCE_PATH%" echo "Directory %RESOURCE_PATH% exists"

@REM [Optional] Delete the original tar file
del .\resource.tar.gz
