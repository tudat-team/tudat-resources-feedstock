# attempt to copy resources to home folder
move %PREFIX%/resource %homedrive%/%homepath%/.tudat
if errorlevel 1 exit 1
