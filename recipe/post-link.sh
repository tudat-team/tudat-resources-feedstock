#!/bin/bash
RESOURCE_GIT_URL="https://github.com/tudat-team/tudat-resources.git"
RESOURCE_GIT_REV=$GIT_FULL_HASH

# set hidden path
HIDDEN_PATH=$HOME/.tudat
TARGET_PATH="$HIDDEN_PATH"/resource/
TEMP_PATH=./tmp/

# create destination hidden folder & resource folder
mkdir -p $TARGET_PATH

# clone the git repo to a tmp directory
git clone $RESOURCE_GIT_URL $TEMP_PATH --verbose

echo "RESOURCE_GIT_REV: ${RESOURCE_GIT_REV}"

# enter the tmp directory
cd $TEMP_PATH/

# switch git branch to commit 
git checkout $RESOURCE_GIT_REV

# copy the resource subdirectory to
cp -a ./resource/. $TARGET_PATH

# go back 2 levels
cd ../

# delete the tmp directory
rm -rf $TEMP_PATH
